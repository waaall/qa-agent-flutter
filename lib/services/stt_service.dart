import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';

import '../models/backend_config.dart';
import '../models/api_responses/system_response.dart';
import '../core/utils/logger.dart';

/// STT 语音转文字服务。
class STTService {
  Dio? _dio;
  STTConfig _config;

  STTService({STTConfig? config}) : _config = config ?? const STTConfig();

  /// 更新配置。
  void updateConfig(STTConfig config) {
    _config = config;
    _dio = null;
  }

  Dio get _client {
    _dio ??= Dio(
      BaseOptions(
        baseUrl: _config.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 60),
        sendTimeout: const Duration(seconds: 60),
      ),
    );
    return _dio!;
  }

  /// 转写音频。
  ///
  /// 兼容 ahmetoner/whisper-asr-webservice：
  /// - 文件字段名固定为 `audio_file`。
  /// - language / vad_filter / word_timestamps / output 走 query 参数。
  /// - 强制 `output=json`，避免默认纯文本响应导致解析失败。
  Future<TranscribeResult> transcribe({
    required Uint8List wavData,
    String? language,
  }) async {
    try {
      final formData = FormData.fromMap({
        'audio_file': MultipartFile.fromBytes(
          wavData,
          filename: 'audio.wav',
          contentType: DioMediaType('audio', 'wav'),
        ),
      });

      final queryParameters = <String, dynamic>{
        'language': language ?? _config.language,
        'vad_filter': _config.vadFilter.toString(),
        'word_timestamps': _config.wordTimestamps.toString(),
        'output': 'json',
      };

      Logger.debug('开始 STT 转写', {
        'endpoint': _config.endpoint,
        'bytes': wavData.length,
        'fileField': 'audio_file',
        'query': queryParameters,
      });

      final response = await _client.post<dynamic>(
        _config.endpoint,
        data: formData,
        queryParameters: queryParameters,
      );

      Logger.debug('STT 转写完成', response.data);

      return _parseTranscribeResponse(response.data);
    } on DioException catch (e) {
      final detail = _describeDioError(e);
      Logger.error('STT 转写失败', detail);
      throw Exception('语音转写失败: $detail');
    }
  }

  /// 整理 Dio 错误；422 时保留 FastAPI validation detail，便于判断是否字段名不匹配。
  String _describeDioError(DioException e) {
    final statusCode = e.response?.statusCode;
    final responseData = e.response?.data;
    if (statusCode != null) {
      return 'HTTP $statusCode ${responseData ?? e.message}';
    }
    return e.message ?? e.toString();
  }

  /// 兼容三种返回：
  /// - Dio 已经解析好的 JSON 对象。
  /// - content-type 为 text/plain、但内容实际是 JSON 字符串的响应。
  /// - 个别部署忽略 output=json 后返回的纯文本。
  TranscribeResult _parseTranscribeResponse(dynamic data) {
    if (data is Map) {
      return TranscribeResult.fromJson(Map<String, dynamic>.from(data));
    }
    if (data is String) {
      final trimmed = data.trim();
      if (trimmed.isEmpty) {
        return const TranscribeResult(text: '');
      }

      final decoded = _tryDecodeJson(trimmed);
      if (decoded is Map) {
        return TranscribeResult.fromJson(Map<String, dynamic>.from(decoded));
      }

      return TranscribeResult(text: trimmed);
    }
    throw Exception('未知的 STT 响应格式');
  }

  /// 尝试解析 JSON；失败时返回 null，让调用方按纯文本处理。
  dynamic _tryDecodeJson(String text) {
    try {
      return jsonDecode(text);
    } catch (_) {
      return null;
    }
  }

  /// 测试 STT 服务连接。
  ///
  /// STT 的 `/asr` 多数只支持 POST，因此 GET 返回 404/405 也代表服务可达。
  Future<bool> testConnection() async {
    try {
      final response = await _client.get<dynamic>(
        _config.endpoint,
        options: Options(
          validateStatus: (status) => status != null && status < 500,
        ),
      );
      return (response.statusCode ?? 500) < 500;
    } catch (e) {
      Logger.warn('STT 服务连接测试失败', e);
      return false;
    }
  }

  /// 获取当前配置。
  STTConfig get config => _config;

  /// 最大录音时长（毫秒）。
  int get maxDurationMs => _config.maxDurationMs;

  /// 最大音频大小（字节）。
  int get maxSizeBytes => _config.maxSizeBytes;
}

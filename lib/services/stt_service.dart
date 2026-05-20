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
  Future<TranscribeResult> transcribe({
    required Uint8List wavData,
    String? language,
  }) async {
    try {
      final formData = FormData.fromMap({
        'file': MultipartFile.fromBytes(wavData, filename: 'audio.wav'),
        'language': language ?? _config.language,
        'vad_filter': _config.vadFilter.toString(),
        'word_timestamps': _config.wordTimestamps.toString(),
      });

      Logger.debug('开始 STT 转写，音频大小: ${wavData.length} bytes');

      final response = await _client.post<Map<String, dynamic>>(
        _config.endpoint,
        data: formData,
      );

      Logger.debug('STT 转写完成', response.data);

      return TranscribeResult.fromJson(response.data!);
    } on DioException catch (e) {
      Logger.error('STT 转写失败', e);
      throw Exception('语音转写失败: ${e.message}');
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

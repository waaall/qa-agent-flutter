import 'dart:typed_data';

import 'package:dio/dio.dart';

import '../config/app_config.dart';
import '../models/backend_config.dart';
import '../core/utils/logger.dart';

/// TTS 语音合成服务。
class TTSService {
  final Dio _dio;
  TTSConfig _config;

  TTSService({TTSConfig? config})
    : _config = config ?? const TTSConfig(),
      _dio = Dio(
        BaseOptions(
          connectTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 60),
          sendTimeout: const Duration(seconds: 60),
        ),
      );

  /// 更新配置。
  void updateConfig(TTSConfig config) {
    _config = config;
  }

  /// 规范化 speech 接口地址，兼容根地址和完整接口地址。
  static String normalizeSpeechEndpoint(String raw) {
    final trimmed = raw.trim().replaceFirst(RegExp(r'/+$'), '');
    final uri = Uri.tryParse(trimmed);
    if (uri == null || !uri.hasScheme) {
      return trimmed;
    }

    final path = uri.path.trim();
    if (path.isEmpty || path == '/') {
      return uri.replace(path: AppConfig.defaultTtsSpeechPath).toString();
    }
    return trimmed;
  }

  /// 合成语音，返回 mp3 字节。
  Future<Uint8List> synthesizeSpeech(String text) async {
    final input = text.trim();
    if (input.isEmpty) {
      throw Exception('语音播放内容为空');
    }

    final endpoint = normalizeSpeechEndpoint(_config.baseUrl);
    final payload = <String, dynamic>{
      'input': input,
      'voice': _config.voice,
      'response_format': AppConfig.ttsResponseFormat,
    };

    Logger.info('请求 TTS 语音合成: $endpoint');

    final response = await _dio.post<List<int>>(
      endpoint,
      data: payload,
      options: Options(
        contentType: Headers.jsonContentType,
        responseType: ResponseType.bytes,
      ),
    );

    final audioBytes = Uint8List.fromList(response.data ?? const []);
    Logger.debug('TTS 音频返回', {
      'bytes': audioBytes.length,
      'contentType': response.headers.value(Headers.contentTypeHeader),
    });
    if (audioBytes.isEmpty) {
      throw Exception('TTS 后端返回了空音频');
    }

    return audioBytes;
  }

  /// 测试 TTS 服务连接。
  Future<bool> testConnection() async {
    try {
      final response = await _dio.get<dynamic>(
        normalizeSpeechEndpoint(_config.baseUrl),
        options: Options(
          validateStatus: (status) => status != null && status < 500,
        ),
      );
      return (response.statusCode ?? 500) < 500;
    } catch (e) {
      Logger.warn('TTS 服务连接测试失败', e);
      return false;
    }
  }

  TTSConfig get config => _config;
}

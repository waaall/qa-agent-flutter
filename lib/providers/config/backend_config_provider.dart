import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/storage/config_storage.dart';
import '../../models/backend_config.dart';
import '../../services/tts_service.dart';
import '../chat/chat_provider.dart';

/// 后端配置 Provider。
final backendConfigProvider =
    StateNotifierProvider<BackendConfigNotifier, BackendConfig>((ref) {
      return BackendConfigNotifier(ref);
    });

/// 后端配置管理。
class BackendConfigNotifier extends StateNotifier<BackendConfig> {
  final Ref _ref;

  BackendConfigNotifier(this._ref) : super(ConfigStorage.loadConfig());

  /// 更新 Agent 后端地址。
  Future<void> updateAgentBaseUrl(String url) async {
    final normalized = _normalizeHttpUrl(url);
    state = state.copyWith(agentBaseUrl: normalized);
    await ConfigStorage.saveConfig(state);

    // Agent 地址立即作用于全局 ApiClient。
    _ref.read(apiClientProvider).updateBaseUrl(normalized);
  }

  /// 更新 STT 配置。
  Future<void> updateSTTConfig(STTConfig config) async {
    final normalized = _normalizeHttpUrl(config.baseUrl);
    state = state.copyWith(sttConfig: config.copyWith(baseUrl: normalized));
    await ConfigStorage.saveConfig(state);
  }

  /// 更新 TTS 配置。
  Future<void> updateTTSConfig(TTSConfig config) async {
    final normalized = _normalizeHttpUrl(config.baseUrl);
    state = state.copyWith(ttsConfig: config.copyWith(baseUrl: normalized));
    await ConfigStorage.saveConfig(state);
  }

  /// 一次性保存三类后端配置。
  Future<void> saveAll(BackendConfig config) async {
    final normalized = config.copyWith(
      agentBaseUrl: _normalizeHttpUrl(config.agentBaseUrl),
      sttConfig: config.sttConfig.copyWith(
        baseUrl: _normalizeHttpUrl(config.sttConfig.baseUrl),
      ),
      ttsConfig: config.ttsConfig.copyWith(
        baseUrl: _normalizeHttpUrl(config.ttsConfig.baseUrl),
      ),
    );

    state = normalized;
    await ConfigStorage.saveConfig(state);
    _ref.read(apiClientProvider).updateBaseUrl(state.agentBaseUrl);
  }

  /// 测试指定服务连接。
  Future<bool> testConnection(BackendServiceType service, String url) async {
    try {
      final normalized = _normalizeHttpUrl(url);
      final testUrl = _buildTestUrl(service, normalized);
      final dio = Dio(
        BaseOptions(
          connectTimeout: const Duration(seconds: 5),
          receiveTimeout: const Duration(seconds: 5),
          validateStatus: (status) {
            if (status == null) return false;
            if (service == BackendServiceType.agent) {
              return status >= 200 && status < 300;
            }
            return status < 500;
          },
        ),
      );
      final response = await dio.get<dynamic>(testUrl);
      final status = response.statusCode ?? 500;
      return service == BackendServiceType.agent ? status < 300 : status < 500;
    } catch (_) {
      return false;
    }
  }

  /// 重置为默认配置。
  Future<void> resetToDefault() async {
    state = BackendConfig.defaultConfig;
    await ConfigStorage.saveConfig(state);
    _ref.read(apiClientProvider).updateBaseUrl(state.agentBaseUrl);
  }

  String _buildTestUrl(BackendServiceType service, String baseUrl) {
    switch (service) {
      case BackendServiceType.agent:
        return '${baseUrl.replaceFirst(RegExp(r'/+$'), '')}/health';
      case BackendServiceType.stt:
        final endpoint = state.sttConfig.endpoint.trim();
        final path = endpoint.isEmpty
            ? '/asr'
            : '/${endpoint.replaceAll(RegExp(r'^/+|/+$'), '')}';
        return '${baseUrl.replaceFirst(RegExp(r'/+$'), '')}$path';
      case BackendServiceType.tts:
        return TTSService.normalizeSpeechEndpoint(baseUrl);
    }
  }

  String _normalizeHttpUrl(String url) {
    final trimmed = url.trim();
    final uri = Uri.tryParse(trimmed);
    if (uri == null ||
        !uri.hasScheme ||
        (uri.scheme != 'http' && uri.scheme != 'https')) {
      throw Exception('仅支持 http:// 或 https:// 开头的地址');
    }
    return trimmed.replaceFirst(RegExp(r'/+$'), '');
  }
}

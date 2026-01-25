import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/storage/config_storage.dart';
import '../../core/network/api_client.dart';
import '../../models/backend_config.dart';
import '../chat/chat_provider.dart';

/// 后端配置 Provider
final backendConfigProvider = StateNotifierProvider<BackendConfigNotifier, BackendConfig>((ref) {
  return BackendConfigNotifier(ref);
});

/// 后端配置管理
class BackendConfigNotifier extends StateNotifier<BackendConfig> {
  final Ref _ref;

  BackendConfigNotifier(this._ref) : super(_loadConfig());

  /// 加载配置
  static BackendConfig _loadConfig() {
    return ConfigStorage.loadConfig();
  }

  /// 更新 API 后端地址
  Future<void> updateApiBaseUrl(String url) async {
    // 验证 URL 格式
    final uri = Uri.tryParse(url);
    if (uri == null || !uri.hasScheme) {
      throw Exception('无效的 URL 格式');
    }

    // 更新状态
    state = state.copyWith(apiBaseUrl: url);

    // 保存到存储
    await ConfigStorage.saveConfig(state);

    // 更新 ApiClient
    _ref.read(apiClientProvider).updateBaseUrl(url);
  }

  /// 更新 STT 配置
  Future<void> updateSTTConfig(STTConfig config) async {
    state = state.copyWith(sttConfig: config);
    await ConfigStorage.saveConfig(state);
  }

  /// 测试后端连接
  Future<bool> testConnection(String url) async {
    try {
      final dio = Dio(BaseOptions(
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
      ));
      final response = await dio.get('$url/health');
      return response.statusCode == 200;
    } catch (e) {
      return false;
    }
  }

  /// 重置为默认配置
  Future<void> resetToDefault() async {
    state = BackendConfig.defaultConfig;
    await ConfigStorage.saveConfig(state);
    _ref.read(apiClientProvider).updateBaseUrl(state.apiBaseUrl);
  }
}

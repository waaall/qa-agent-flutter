import 'package:freezed_annotation/freezed_annotation.dart';
import '../config/app_config.dart';

part 'backend_config.freezed.dart';
part 'backend_config.g.dart';

/// STT 配置
@freezed
class STTConfig with _$STTConfig {
  const factory STTConfig({
    // STT 服务地址
    @Default(AppConfig.defaultSttBaseUrl) String baseUrl,
    // ASR 端点
    @Default('/asr') String endpoint,
    // 语言
    @Default('zh') String language,
    // 是否启用 VAD 过滤
    @Default(true) bool vadFilter,
    // 最大录音时长（毫秒）
    @Default(60000) int maxDurationMs,
    // 最大音频大小（字节）
    @Default(10485760) int maxSizeBytes,
  }) = _STTConfig;

  factory STTConfig.fromJson(Map<String, dynamic> json) =>
      _$STTConfigFromJson(json);
}

/// 后端配置
@freezed
class BackendConfig with _$BackendConfig {
  const factory BackendConfig({
    // API 后端地址
    required String apiBaseUrl,
    // STT 配置
    STTConfig? sttConfig,
  }) = _BackendConfig;

  factory BackendConfig.fromJson(Map<String, dynamic> json) =>
      _$BackendConfigFromJson(json);

  /// 默认配置
  static BackendConfig get defaultConfig => const BackendConfig(
        apiBaseUrl: AppConfig.defaultApiBaseUrl,
        sttConfig: STTConfig(),
      );
}

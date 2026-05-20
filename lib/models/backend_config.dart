import 'package:freezed_annotation/freezed_annotation.dart';

import '../config/app_config.dart';

part 'backend_config.freezed.dart';
part 'backend_config.g.dart';

/// 可独立配置的后端服务类型。
enum BackendServiceType { agent, stt, tts }

/// STT 配置。
@freezed
class STTConfig with _$STTConfig {
  const factory STTConfig({
    // STT 服务根地址。
    @Default(AppConfig.defaultSttBaseUrl) String baseUrl,
    // ASR 端点。
    @Default('/asr') String endpoint,
    // 语言。
    @Default('zh') String language,
    // 是否启用 VAD 过滤。
    @Default(true) bool vadFilter,
    // 是否返回词级时间戳。
    @Default(true) bool wordTimestamps,
    // 最大录音时长（毫秒）。
    @Default(AppConfig.maxRecordDuration) int maxDurationMs,
    // 最大音频大小（字节）。
    @Default(AppConfig.maxAudioSize) int maxSizeBytes,
  }) = _STTConfig;

  factory STTConfig.fromJson(Map<String, dynamic> json) =>
      _$STTConfigFromJson(json);
}

/// TTS 配置。
@freezed
class TTSConfig with _$TTSConfig {
  const factory TTSConfig({
    // TTS 服务根地址或完整 speech 接口地址。
    @Default(AppConfig.defaultTtsBaseUrl) String baseUrl,
    // 预留可配置声音，首版默认 zf_094。
    @Default(AppConfig.defaultTtsVoice) String voice,
  }) = _TTSConfig;

  factory TTSConfig.fromJson(Map<String, dynamic> json) =>
      _$TTSConfigFromJson(json);
}

/// 后端配置：Agent / STT / TTS 三类服务互相独立。
@freezed
class BackendConfig with _$BackendConfig {
  const factory BackendConfig({
    // Agent 后端地址，用于对话、报告、系统状态、索引更新。
    @Default(AppConfig.defaultAgentBaseUrl) String agentBaseUrl,
    // STT 配置。
    @Default(STTConfig()) STTConfig sttConfig,
    // TTS 配置。
    @Default(TTSConfig()) TTSConfig ttsConfig,
  }) = _BackendConfig;

  factory BackendConfig.fromJson(Map<String, dynamic> json) =>
      _$BackendConfigFromJson(json);

  /// 默认配置。
  static BackendConfig get defaultConfig => const BackendConfig();
}

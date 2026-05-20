// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backend_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$STTConfigImpl _$$STTConfigImplFromJson(Map<String, dynamic> json) =>
    _$STTConfigImpl(
      baseUrl: json['baseUrl'] as String? ?? AppConfig.defaultSttBaseUrl,
      endpoint: json['endpoint'] as String? ?? '/asr',
      language: json['language'] as String? ?? 'zh',
      vadFilter: json['vadFilter'] as bool? ?? true,
      wordTimestamps: json['wordTimestamps'] as bool? ?? true,
      maxDurationMs:
          (json['maxDurationMs'] as num?)?.toInt() ??
          AppConfig.maxRecordDuration,
      maxSizeBytes:
          (json['maxSizeBytes'] as num?)?.toInt() ?? AppConfig.maxAudioSize,
    );

Map<String, dynamic> _$$STTConfigImplToJson(_$STTConfigImpl instance) =>
    <String, dynamic>{
      'baseUrl': instance.baseUrl,
      'endpoint': instance.endpoint,
      'language': instance.language,
      'vadFilter': instance.vadFilter,
      'wordTimestamps': instance.wordTimestamps,
      'maxDurationMs': instance.maxDurationMs,
      'maxSizeBytes': instance.maxSizeBytes,
    };

_$TTSConfigImpl _$$TTSConfigImplFromJson(Map<String, dynamic> json) =>
    _$TTSConfigImpl(
      baseUrl: json['baseUrl'] as String? ?? AppConfig.defaultTtsBaseUrl,
      voice: json['voice'] as String? ?? AppConfig.defaultTtsVoice,
    );

Map<String, dynamic> _$$TTSConfigImplToJson(_$TTSConfigImpl instance) =>
    <String, dynamic>{'baseUrl': instance.baseUrl, 'voice': instance.voice};

_$BackendConfigImpl _$$BackendConfigImplFromJson(Map<String, dynamic> json) =>
    _$BackendConfigImpl(
      agentBaseUrl:
          json['agentBaseUrl'] as String? ?? AppConfig.defaultAgentBaseUrl,
      sttConfig: json['sttConfig'] == null
          ? const STTConfig()
          : STTConfig.fromJson(json['sttConfig'] as Map<String, dynamic>),
      ttsConfig: json['ttsConfig'] == null
          ? const TTSConfig()
          : TTSConfig.fromJson(json['ttsConfig'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BackendConfigImplToJson(_$BackendConfigImpl instance) =>
    <String, dynamic>{
      'agentBaseUrl': instance.agentBaseUrl,
      'sttConfig': instance.sttConfig,
      'ttsConfig': instance.ttsConfig,
    };

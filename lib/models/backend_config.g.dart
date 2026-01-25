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
      maxDurationMs: (json['maxDurationMs'] as num?)?.toInt() ?? 60000,
      maxSizeBytes: (json['maxSizeBytes'] as num?)?.toInt() ?? 10485760,
    );

Map<String, dynamic> _$$STTConfigImplToJson(_$STTConfigImpl instance) =>
    <String, dynamic>{
      'baseUrl': instance.baseUrl,
      'endpoint': instance.endpoint,
      'language': instance.language,
      'vadFilter': instance.vadFilter,
      'maxDurationMs': instance.maxDurationMs,
      'maxSizeBytes': instance.maxSizeBytes,
    };

_$BackendConfigImpl _$$BackendConfigImplFromJson(Map<String, dynamic> json) =>
    _$BackendConfigImpl(
      apiBaseUrl: json['apiBaseUrl'] as String,
      sttConfig: json['sttConfig'] == null
          ? null
          : STTConfig.fromJson(json['sttConfig'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BackendConfigImplToJson(_$BackendConfigImpl instance) =>
    <String, dynamic>{
      'apiBaseUrl': instance.apiBaseUrl,
      'sttConfig': instance.sttConfig,
    };

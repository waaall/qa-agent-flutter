// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LlmHealthInfoImpl _$$LlmHealthInfoImplFromJson(Map<String, dynamic> json) =>
    _$LlmHealthInfoImpl(
      provider: json['provider'] as String?,
      ready: json['ready'] as bool? ?? false,
      currentModel: json['current_model'] as String?,
      tokenBudget: json['token_budget'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$LlmHealthInfoImplToJson(_$LlmHealthInfoImpl instance) =>
    <String, dynamic>{
      'provider': instance.provider,
      'ready': instance.ready,
      'current_model': instance.currentModel,
      'token_budget': instance.tokenBudget,
    };

_$HealthResponseImpl _$$HealthResponseImplFromJson(Map<String, dynamic> json) =>
    _$HealthResponseImpl(
      status: json['status'] as String,
      framework: json['framework'] as String?,
      version: json['version'] as String?,
      llm: json['llm'] == null
          ? null
          : LlmHealthInfo.fromJson(json['llm'] as Map<String, dynamic>),
      ollama: json['ollama'] as Map<String, dynamic>?,
      openai: json['openai'] as Map<String, dynamic>?,
      observability: json['observability'] as Map<String, dynamic>?,
      timestamp: json['timestamp'] as String?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$HealthResponseImplToJson(
  _$HealthResponseImpl instance,
) => <String, dynamic>{
  'status': instance.status,
  'framework': instance.framework,
  'version': instance.version,
  'llm': instance.llm,
  'ollama': instance.ollama,
  'openai': instance.openai,
  'observability': instance.observability,
  'timestamp': instance.timestamp,
  'error': instance.error,
};

_$StatsResponseImpl _$$StatsResponseImplFromJson(Map<String, dynamic> json) =>
    _$StatsResponseImpl(
      success: json['success'] as bool,
      stats: json['stats'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$StatsResponseImplToJson(_$StatsResponseImpl instance) =>
    <String, dynamic>{'success': instance.success, 'stats': instance.stats};

_$TranscribeResultImpl _$$TranscribeResultImplFromJson(
  Map<String, dynamic> json,
) => _$TranscribeResultImpl(
  text: json['text'] as String,
  language: json['language'] as String?,
  durationMs: (json['duration_ms'] as num?)?.toInt(),
);

Map<String, dynamic> _$$TranscribeResultImplToJson(
  _$TranscribeResultImpl instance,
) => <String, dynamic>{
  'text': instance.text,
  'language': instance.language,
  'duration_ms': instance.durationMs,
};

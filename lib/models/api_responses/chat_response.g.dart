// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatRequestImpl _$$ChatRequestImplFromJson(Map<String, dynamic> json) =>
    _$ChatRequestImpl(
      query: json['query'] as String,
      sessionId: json['session_id'] as String?,
      reset: json['reset'] as bool? ?? false,
    );

Map<String, dynamic> _$$ChatRequestImplToJson(_$ChatRequestImpl instance) =>
    <String, dynamic>{
      'query': instance.query,
      'session_id': instance.sessionId,
      'reset': instance.reset,
    };

_$ChatResponseImpl _$$ChatResponseImplFromJson(Map<String, dynamic> json) =>
    _$ChatResponseImpl(
      success: json['success'] as bool,
      answer: json['answer'] as String,
      sessionId: json['session_id'] as String,
      enhancementApplied: json['enhancement_applied'] as bool? ?? false,
      matchedEntries: (json['matched_entries'] as num?)?.toInt() ?? 0,
      raw: json['raw'] as String?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$ChatResponseImplToJson(_$ChatResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'answer': instance.answer,
      'session_id': instance.sessionId,
      'enhancement_applied': instance.enhancementApplied,
      'matched_entries': instance.matchedEntries,
      'raw': instance.raw,
      'error': instance.error,
    };

_$HistoryMessageImpl _$$HistoryMessageImplFromJson(Map<String, dynamic> json) =>
    _$HistoryMessageImpl(
      role: json['role'] as String,
      content: json['content'] as String,
      additionalKwargs: json['additional_kwargs'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$HistoryMessageImplToJson(
  _$HistoryMessageImpl instance,
) => <String, dynamic>{
  'role': instance.role,
  'content': instance.content,
  'additional_kwargs': instance.additionalKwargs,
};

_$SessionHistoryResponseImpl _$$SessionHistoryResponseImplFromJson(
  Map<String, dynamic> json,
) => _$SessionHistoryResponseImpl(
  success: json['success'] as bool,
  sessionId: json['session_id'] as String,
  messageCount: (json['message_count'] as num).toInt(),
  history: (json['history'] as List<dynamic>)
      .map((e) => HistoryMessage.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$SessionHistoryResponseImplToJson(
  _$SessionHistoryResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'session_id': instance.sessionId,
  'message_count': instance.messageCount,
  'history': instance.history,
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatRequestImpl _$$ChatRequestImplFromJson(Map<String, dynamic> json) =>
    _$ChatRequestImpl(
      query: json['query'] as String,
      sessionId: json['sessionId'] as String?,
      reset: json['reset'] as bool? ?? false,
    );

Map<String, dynamic> _$$ChatRequestImplToJson(_$ChatRequestImpl instance) =>
    <String, dynamic>{
      'query': instance.query,
      'sessionId': instance.sessionId,
      'reset': instance.reset,
    };

_$ChatResponseImpl _$$ChatResponseImplFromJson(Map<String, dynamic> json) =>
    _$ChatResponseImpl(
      answer: json['answer'] as String,
      sessionId: json['sessionId'] as String,
      queryType: json['queryType'] as String?,
      enginesUsed: (json['enginesUsed'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      confidence: (json['confidence'] as num?)?.toDouble(),
      query: json['query'] as String?,
    );

Map<String, dynamic> _$$ChatResponseImplToJson(_$ChatResponseImpl instance) =>
    <String, dynamic>{
      'answer': instance.answer,
      'sessionId': instance.sessionId,
      'queryType': instance.queryType,
      'enginesUsed': instance.enginesUsed,
      'confidence': instance.confidence,
      'query': instance.query,
    };

_$HistoryMessageImpl _$$HistoryMessageImplFromJson(Map<String, dynamic> json) =>
    _$HistoryMessageImpl(
      role: json['role'] as String,
      content: json['content'] as String,
      timestamp: (json['timestamp'] as num).toInt(),
      additionalKwargs: json['additionalKwargs'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$HistoryMessageImplToJson(
  _$HistoryMessageImpl instance,
) => <String, dynamic>{
  'role': instance.role,
  'content': instance.content,
  'timestamp': instance.timestamp,
  'additionalKwargs': instance.additionalKwargs,
};

_$SessionHistoryResponseImpl _$$SessionHistoryResponseImplFromJson(
  Map<String, dynamic> json,
) => _$SessionHistoryResponseImpl(
  sessionId: json['sessionId'] as String,
  history: (json['history'] as List<dynamic>)
      .map((e) => HistoryMessage.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$SessionHistoryResponseImplToJson(
  _$SessionHistoryResponseImpl instance,
) => <String, dynamic>{
  'sessionId': instance.sessionId,
  'history': instance.history,
};

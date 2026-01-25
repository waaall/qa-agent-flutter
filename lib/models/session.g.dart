// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionImpl _$$SessionImplFromJson(Map<String, dynamic> json) =>
    _$SessionImpl(
      sessionId: json['sessionId'] as String,
      title: json['title'] as String,
      createdAt: (json['createdAt'] as num).toInt(),
      lastAccessed: (json['lastAccessed'] as num).toInt(),
      messageCount: (json['messageCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$SessionImplToJson(_$SessionImpl instance) =>
    <String, dynamic>{
      'sessionId': instance.sessionId,
      'title': instance.title,
      'createdAt': instance.createdAt,
      'lastAccessed': instance.lastAccessed,
      'messageCount': instance.messageCount,
    };

_$SessionStateImpl _$$SessionStateImplFromJson(Map<String, dynamic> json) =>
    _$SessionStateImpl(
      sessions:
          (json['sessions'] as List<dynamic>?)
              ?.map((e) => Session.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      currentSessionId: json['currentSessionId'] as String?,
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$SessionStateImplToJson(_$SessionStateImpl instance) =>
    <String, dynamic>{
      'sessions': instance.sessions,
      'currentSessionId': instance.currentSessionId,
      'isLoading': instance.isLoading,
    };

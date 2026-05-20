// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageMetadataImpl _$$MessageMetadataImplFromJson(
  Map<String, dynamic> json,
) => _$MessageMetadataImpl(
  enhancementApplied: json['enhancement_applied'] as bool? ?? false,
  matchedEntries: (json['matched_entries'] as num?)?.toInt() ?? 0,
  extra: json['extra'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$$MessageMetadataImplToJson(
  _$MessageMetadataImpl instance,
) => <String, dynamic>{
  'enhancement_applied': instance.enhancementApplied,
  'matched_entries': instance.matchedEntries,
  'extra': instance.extra,
};

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      id: json['id'] as String,
      role: json['role'] as String,
      content: json['content'] as String,
      timestamp: (json['timestamp'] as num).toInt(),
      metadata: json['metadata'] == null
          ? null
          : MessageMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
      isLoading: json['isLoading'] as bool? ?? false,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'role': instance.role,
      'content': instance.content,
      'timestamp': instance.timestamp,
      'metadata': instance.metadata,
      'isLoading': instance.isLoading,
      'error': instance.error,
    };

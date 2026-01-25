// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageMetadataImpl _$$MessageMetadataImplFromJson(
  Map<String, dynamic> json,
) => _$MessageMetadataImpl(
  queryType: json['queryType'] as String?,
  enginesUsed: (json['enginesUsed'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  confidence: (json['confidence'] as num?)?.toDouble(),
);

Map<String, dynamic> _$$MessageMetadataImplToJson(
  _$MessageMetadataImpl instance,
) => <String, dynamic>{
  'queryType': instance.queryType,
  'enginesUsed': instance.enginesUsed,
  'confidence': instance.confidence,
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentImpl _$$DocumentImplFromJson(Map<String, dynamic> json) =>
    _$DocumentImpl(
      filename: json['filename'] as String,
      label: json['label'] as String,
      uploadedAt: json['uploadedAt'] as String,
      size: (json['size'] as num?)?.toInt(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$DocumentImplToJson(_$DocumentImpl instance) =>
    <String, dynamic>{
      'filename': instance.filename,
      'label': instance.label,
      'uploadedAt': instance.uploadedAt,
      'size': instance.size,
      'status': instance.status,
    };

_$ListDocumentsResponseImpl _$$ListDocumentsResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ListDocumentsResponseImpl(
  documents: (json['documents'] as List<dynamic>)
      .map((e) => Document.fromJson(e as Map<String, dynamic>))
      .toList(),
  count: (json['count'] as num).toInt(),
);

Map<String, dynamic> _$$ListDocumentsResponseImplToJson(
  _$ListDocumentsResponseImpl instance,
) => <String, dynamic>{
  'documents': instance.documents,
  'count': instance.count,
};

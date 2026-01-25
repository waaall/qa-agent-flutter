// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadResponseImpl _$$UploadResponseImplFromJson(Map<String, dynamic> json) =>
    _$UploadResponseImpl(
      taskId: json['taskId'] as String,
      filename: json['filename'] as String,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$UploadResponseImplToJson(
  _$UploadResponseImpl instance,
) => <String, dynamic>{
  'taskId': instance.taskId,
  'filename': instance.filename,
  'message': instance.message,
};

_$UploadTaskStatusImpl _$$UploadTaskStatusImplFromJson(
  Map<String, dynamic> json,
) => _$UploadTaskStatusImpl(
  taskId: json['taskId'] as String,
  status: json['status'] as String,
  stage: json['stage'] as String?,
  progress: (json['progress'] as num?)?.toInt(),
  errors: (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
  completedAt: json['completedAt'] as String?,
);

Map<String, dynamic> _$$UploadTaskStatusImplToJson(
  _$UploadTaskStatusImpl instance,
) => <String, dynamic>{
  'taskId': instance.taskId,
  'status': instance.status,
  'stage': instance.stage,
  'progress': instance.progress,
  'errors': instance.errors,
  'completedAt': instance.completedAt,
};

_$UpdateIndexResponseImpl _$$UpdateIndexResponseImplFromJson(
  Map<String, dynamic> json,
) => _$UpdateIndexResponseImpl(
  taskId: json['taskId'] as String,
  message: json['message'] as String?,
);

Map<String, dynamic> _$$UpdateIndexResponseImplToJson(
  _$UpdateIndexResponseImpl instance,
) => <String, dynamic>{'taskId': instance.taskId, 'message': instance.message};

_$UpdateTaskStatusImpl _$$UpdateTaskStatusImplFromJson(
  Map<String, dynamic> json,
) => _$UpdateTaskStatusImpl(
  taskId: json['taskId'] as String,
  status: json['status'] as String,
  stage: json['stage'] as String?,
  progress: (json['progress'] as num?)?.toInt(),
  stats: json['stats'] == null
      ? null
      : UpdateStats.fromJson(json['stats'] as Map<String, dynamic>),
  errors: (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$$UpdateTaskStatusImplToJson(
  _$UpdateTaskStatusImpl instance,
) => <String, dynamic>{
  'taskId': instance.taskId,
  'status': instance.status,
  'stage': instance.stage,
  'progress': instance.progress,
  'stats': instance.stats,
  'errors': instance.errors,
};

_$UpdateStatsImpl _$$UpdateStatsImplFromJson(Map<String, dynamic> json) =>
    _$UpdateStatsImpl(
      documentsProcessed: (json['documentsProcessed'] as num?)?.toInt(),
      chunksCreated: (json['chunksCreated'] as num?)?.toInt(),
      vectorsIndexed: (json['vectorsIndexed'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UpdateStatsImplToJson(_$UpdateStatsImpl instance) =>
    <String, dynamic>{
      'documentsProcessed': instance.documentsProcessed,
      'chunksCreated': instance.chunksCreated,
      'vectorsIndexed': instance.vectorsIndexed,
    };

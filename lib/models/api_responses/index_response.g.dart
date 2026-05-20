// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateIndexResponseImpl _$$UpdateIndexResponseImplFromJson(
  Map<String, dynamic> json,
) => _$UpdateIndexResponseImpl(
  success: json['success'] as bool,
  message: json['message'] as String?,
  taskId: json['task_id'] as String,
  statusUrl: json['status_url'] as String?,
);

Map<String, dynamic> _$$UpdateIndexResponseImplToJson(
  _$UpdateIndexResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'task_id': instance.taskId,
  'status_url': instance.statusUrl,
};

_$UpdateTaskProgressImpl _$$UpdateTaskProgressImplFromJson(
  Map<String, dynamic> json,
) => _$UpdateTaskProgressImpl(indexing: json['indexing'] as String?);

Map<String, dynamic> _$$UpdateTaskProgressImplToJson(
  _$UpdateTaskProgressImpl instance,
) => <String, dynamic>{'indexing': instance.indexing};

_$UpdateTaskErrorImpl _$$UpdateTaskErrorImplFromJson(
  Map<String, dynamic> json,
) => _$UpdateTaskErrorImpl(
  stage: json['stage'] as String,
  message: json['message'] as String,
  timestamp: json['timestamp'] as String?,
);

Map<String, dynamic> _$$UpdateTaskErrorImplToJson(
  _$UpdateTaskErrorImpl instance,
) => <String, dynamic>{
  'stage': instance.stage,
  'message': instance.message,
  'timestamp': instance.timestamp,
};

_$UpdateTaskStatusImpl _$$UpdateTaskStatusImplFromJson(
  Map<String, dynamic> json,
) => _$UpdateTaskStatusImpl(
  success: json['success'] as bool,
  taskId: json['task_id'] as String,
  status: json['status'] as String,
  stage: json['stage'] as String?,
  progress: json['progress'] == null
      ? const UpdateTaskProgress()
      : UpdateTaskProgress.fromJson(json['progress'] as Map<String, dynamic>),
  result: json['result'] as Map<String, dynamic>?,
  errors:
      (json['errors'] as List<dynamic>?)
          ?.map((e) => UpdateTaskError.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  createdAt: json['created_at'] as String?,
  completedAt: json['completed_at'] as String?,
);

Map<String, dynamic> _$$UpdateTaskStatusImplToJson(
  _$UpdateTaskStatusImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'task_id': instance.taskId,
  'status': instance.status,
  'stage': instance.stage,
  'progress': instance.progress,
  'result': instance.result,
  'errors': instance.errors,
  'created_at': instance.createdAt,
  'completed_at': instance.completedAt,
};

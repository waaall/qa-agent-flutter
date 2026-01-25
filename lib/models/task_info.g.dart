// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskErrorImpl _$$TaskErrorImplFromJson(Map<String, dynamic> json) =>
    _$TaskErrorImpl(
      message: json['message'] as String,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$TaskErrorImplToJson(_$TaskErrorImpl instance) =>
    <String, dynamic>{'message': instance.message, 'code': instance.code};

_$UnifiedTaskInfoImpl _$$UnifiedTaskInfoImplFromJson(
  Map<String, dynamic> json,
) => _$UnifiedTaskInfoImpl(
  taskId: json['taskId'] as String,
  type: $enumDecode(_$TaskTypeEnumMap, json['type']),
  status: $enumDecode(_$TaskStatusEnumMap, json['status']),
  progress: (json['progress'] as num).toInt(),
  stage: json['stage'] as String,
  createdAt: (json['createdAt'] as num).toInt(),
  filename: json['filename'] as String?,
  errors: (json['errors'] as List<dynamic>?)
      ?.map((e) => TaskError.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$UnifiedTaskInfoImplToJson(
  _$UnifiedTaskInfoImpl instance,
) => <String, dynamic>{
  'taskId': instance.taskId,
  'type': _$TaskTypeEnumMap[instance.type]!,
  'status': _$TaskStatusEnumMap[instance.status]!,
  'progress': instance.progress,
  'stage': instance.stage,
  'createdAt': instance.createdAt,
  'filename': instance.filename,
  'errors': instance.errors,
};

const _$TaskTypeEnumMap = {
  TaskType.upload: 'upload',
  TaskType.update: 'update',
};

const _$TaskStatusEnumMap = {
  TaskStatus.pending: 'pending',
  TaskStatus.processing: 'processing',
  TaskStatus.completed: 'completed',
  TaskStatus.failed: 'failed',
};

_$TaskQueueStateImpl _$$TaskQueueStateImplFromJson(Map<String, dynamic> json) =>
    _$TaskQueueStateImpl(
      tasks:
          (json['tasks'] as List<dynamic>?)
              ?.map((e) => UnifiedTaskInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TaskQueueStateImplToJson(
  _$TaskQueueStateImpl instance,
) => <String, dynamic>{'tasks': instance.tasks};

import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_info.freezed.dart';
part 'task_info.g.dart';

/// 任务类型
enum TaskType { upload, update }

/// 任务状态
enum TaskStatus { pending, processing, completed, failed }

/// 任务错误
@freezed
class TaskError with _$TaskError {
  const factory TaskError({
    required String message,
    String? code,
  }) = _TaskError;

  factory TaskError.fromJson(Map<String, dynamic> json) =>
      _$TaskErrorFromJson(json);
}

/// 统一任务信息
@freezed
class UnifiedTaskInfo with _$UnifiedTaskInfo {
  const factory UnifiedTaskInfo({
    // 任务 ID
    required String taskId,
    // 任务类型
    required TaskType type,
    // 任务状态
    required TaskStatus status,
    // 进度（0-100）
    required int progress,
    // 阶段描述
    required String stage,
    // 创建时间（毫秒时间戳）
    required int createdAt,
    // 文件名（上传任务）
    String? filename,
    // 错误列表
    List<TaskError>? errors,
  }) = _UnifiedTaskInfo;

  factory UnifiedTaskInfo.fromJson(Map<String, dynamic> json) =>
      _$UnifiedTaskInfoFromJson(json);
}

/// 任务队列状态
@freezed
class TaskQueueState with _$TaskQueueState {
  const factory TaskQueueState({
    @Default([]) List<UnifiedTaskInfo> tasks,
  }) = _TaskQueueState;

  factory TaskQueueState.fromJson(Map<String, dynamic> json) =>
      _$TaskQueueStateFromJson(json);
}

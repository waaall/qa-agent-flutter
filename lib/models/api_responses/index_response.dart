// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'index_response.freezed.dart';
part 'index_response.g.dart';

/// 知识索引更新响应。
@freezed
class UpdateIndexResponse with _$UpdateIndexResponse {
  const factory UpdateIndexResponse({
    required bool success,
    String? message,
    @JsonKey(name: 'task_id') required String taskId,
    @JsonKey(name: 'status_url') String? statusUrl,
  }) = _UpdateIndexResponse;

  factory UpdateIndexResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateIndexResponseFromJson(json);
}

/// 更新任务进度。
@freezed
class UpdateTaskProgress with _$UpdateTaskProgress {
  const factory UpdateTaskProgress({String? indexing}) = _UpdateTaskProgress;

  factory UpdateTaskProgress.fromJson(Map<String, dynamic> json) =>
      _$UpdateTaskProgressFromJson(json);
}

/// 更新任务错误信息。
@freezed
class UpdateTaskError with _$UpdateTaskError {
  const factory UpdateTaskError({
    required String stage,
    required String message,
    String? timestamp,
  }) = _UpdateTaskError;

  factory UpdateTaskError.fromJson(Map<String, dynamic> json) =>
      _$UpdateTaskErrorFromJson(json);
}

/// 知识索引更新任务状态。
@freezed
class UpdateTaskStatus with _$UpdateTaskStatus {
  const factory UpdateTaskStatus({
    required bool success,
    @JsonKey(name: 'task_id') required String taskId,
    required String status,
    String? stage,
    @Default(UpdateTaskProgress()) UpdateTaskProgress progress,
    Map<String, dynamic>? result,
    @Default([]) List<UpdateTaskError> errors,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'completed_at') String? completedAt,
  }) = _UpdateTaskStatus;

  factory UpdateTaskStatus.fromJson(Map<String, dynamic> json) =>
      _$UpdateTaskStatusFromJson(json);
}

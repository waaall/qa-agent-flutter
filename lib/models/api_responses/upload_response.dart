import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_response.freezed.dart';
part 'upload_response.g.dart';

/// 上传响应
@freezed
class UploadResponse with _$UploadResponse {
  const factory UploadResponse({
    // 任务 ID
    required String taskId,
    // 文件名
    required String filename,
    // 消息
    String? message,
  }) = _UploadResponse;

  factory UploadResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadResponseFromJson(json);
}

/// 上传任务状态
@freezed
class UploadTaskStatus with _$UploadTaskStatus {
  const factory UploadTaskStatus({
    // 任务 ID
    required String taskId,
    // 状态: pending | processing | completed | failed
    required String status,
    // 阶段描述
    String? stage,
    // 进度（0-100）
    int? progress,
    // 错误信息
    List<String>? errors,
    // 完成时间
    String? completedAt,
  }) = _UploadTaskStatus;

  factory UploadTaskStatus.fromJson(Map<String, dynamic> json) =>
      _$UploadTaskStatusFromJson(json);
}

/// 更新索引响应
@freezed
class UpdateIndexResponse with _$UpdateIndexResponse {
  const factory UpdateIndexResponse({
    // 任务 ID
    required String taskId,
    // 消息
    String? message,
  }) = _UpdateIndexResponse;

  factory UpdateIndexResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateIndexResponseFromJson(json);
}

/// 更新任务状态
@freezed
class UpdateTaskStatus with _$UpdateTaskStatus {
  const factory UpdateTaskStatus({
    // 任务 ID
    required String taskId,
    // 状态
    required String status,
    // 阶段描述
    String? stage,
    // 进度
    int? progress,
    // 统计信息
    UpdateStats? stats,
    // 错误
    List<String>? errors,
  }) = _UpdateTaskStatus;

  factory UpdateTaskStatus.fromJson(Map<String, dynamic> json) =>
      _$UpdateTaskStatusFromJson(json);
}

/// 更新统计
@freezed
class UpdateStats with _$UpdateStats {
  const factory UpdateStats({
    int? documentsProcessed,
    int? chunksCreated,
    int? vectorsIndexed,
  }) = _UpdateStats;

  factory UpdateStats.fromJson(Map<String, dynamic> json) =>
      _$UpdateStatsFromJson(json);
}

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'report.freezed.dart';
part 'report.g.dart';

/// 报告类型，与后端 Literal 严格对齐。
enum ReportType {
  @JsonValue('trend_analysis')
  trendAnalysis,
  @JsonValue('diagnosis_report')
  diagnosisReport,
  @JsonValue('incident_review')
  incidentReview,
  @JsonValue('comprehensive_analysis')
  comprehensiveAnalysis,
}

/// 报告状态机。
enum ReportStatus {
  @JsonValue('queued')
  queued,
  @JsonValue('running')
  running,
  @JsonValue('drafting')
  drafting,
  @JsonValue('reviewing')
  reviewing,
  @JsonValue('completed')
  completed,
  @JsonValue('failed')
  failed,
  @JsonValue('cancelled')
  cancelled,
}

/// 报告枚举展示扩展。
extension ReportTypeLabel on ReportType {
  String get value {
    switch (this) {
      case ReportType.trendAnalysis:
        return 'trend_analysis';
      case ReportType.diagnosisReport:
        return 'diagnosis_report';
      case ReportType.incidentReview:
        return 'incident_review';
      case ReportType.comprehensiveAnalysis:
        return 'comprehensive_analysis';
    }
  }

  String get label {
    switch (this) {
      case ReportType.trendAnalysis:
        return '趋势分析';
      case ReportType.diagnosisReport:
        return '诊断报告';
      case ReportType.incidentReview:
        return '事故复盘';
      case ReportType.comprehensiveAnalysis:
        return '综合分析';
    }
  }
}

/// 报告状态展示扩展。
extension ReportStatusLabel on ReportStatus {
  String get value {
    switch (this) {
      case ReportStatus.queued:
        return 'queued';
      case ReportStatus.running:
        return 'running';
      case ReportStatus.drafting:
        return 'drafting';
      case ReportStatus.reviewing:
        return 'reviewing';
      case ReportStatus.completed:
        return 'completed';
      case ReportStatus.failed:
        return 'failed';
      case ReportStatus.cancelled:
        return 'cancelled';
    }
  }

  String get label {
    switch (this) {
      case ReportStatus.queued:
        return '排队中';
      case ReportStatus.running:
        return '执行中';
      case ReportStatus.drafting:
        return '生成草稿';
      case ReportStatus.reviewing:
        return '审阅中';
      case ReportStatus.completed:
        return '已完成';
      case ReportStatus.failed:
        return '失败';
      case ReportStatus.cancelled:
        return '已取消';
    }
  }

  bool get isTerminal =>
      this == ReportStatus.completed ||
      this == ReportStatus.failed ||
      this == ReportStatus.cancelled;

  bool get isActive => !isTerminal;
}

/// 报告请求中的结构化上下文。
@freezed
class ReportContext with _$ReportContext {
  const factory ReportContext({
    String? plant,
    String? unit,
    @JsonKey(name: 'device_type') String? deviceType,
    @JsonKey(name: 'device_no') String? deviceNo,
    @JsonKey(name: 'point_codes') @Default([]) List<String> pointCodes,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'incident_id') String? incidentId,
    @JsonKey(name: 'session_id') String? sessionId,
    @JsonKey(name: 'extra_constraints')
    @Default([])
    List<String> extraConstraints,
  }) = _ReportContext;

  factory ReportContext.fromJson(Map<String, dynamic> json) =>
      _$ReportContextFromJson(json);
}

/// 报告输出格式：当前后端固定 markdown / zh-CN。
@freezed
class ReportOutput with _$ReportOutput {
  const factory ReportOutput({
    @Default('markdown') String format,
    @Default('zh-CN') String language,
  }) = _ReportOutput;

  factory ReportOutput.fromJson(Map<String, dynamic> json) =>
      _$ReportOutputFromJson(json);
}

/// 创建报告请求体。
@freezed
class CreateReportRequest with _$CreateReportRequest {
  const factory CreateReportRequest({
    @JsonKey(name: 'report_type') required ReportType reportType,
    required String question,
    String? title,
    @Default(ReportContext()) ReportContext context,
    @Default(ReportOutput()) ReportOutput output,
  }) = _CreateReportRequest;

  factory CreateReportRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateReportRequestFromJson(json);
}

/// 创建报告响应。
@freezed
class ReportCreatedResponse with _$ReportCreatedResponse {
  const factory ReportCreatedResponse({
    @JsonKey(name: 'report_id') required String reportId,
    required ReportStatus status,
  }) = _ReportCreatedResponse;

  factory ReportCreatedResponse.fromJson(Map<String, dynamic> json) =>
      _$ReportCreatedResponseFromJson(json);
}

/// 报告进度。
@freezed
class ReportProgress with _$ReportProgress {
  const factory ReportProgress({
    @Default('') String phase,
    @Default('') String message,
    @JsonKey(name: 'evidence_count') @Default(0) int evidenceCount,
  }) = _ReportProgress;

  factory ReportProgress.fromJson(Map<String, dynamic> json) =>
      _$ReportProgressFromJson(json);
}

/// Artifact 描述。
@freezed
class ReportArtifact with _$ReportArtifact {
  const factory ReportArtifact({required String name, required String kind}) =
      _ReportArtifact;

  factory ReportArtifact.fromJson(Map<String, dynamic> json) =>
      _$ReportArtifactFromJson(json);
}

/// 报告状态快照。
@freezed
class ReportStatusResponse with _$ReportStatusResponse {
  const factory ReportStatusResponse({
    @JsonKey(name: 'report_id') required String reportId,
    @JsonKey(name: 'report_type') required ReportType reportType,
    required ReportStatus status,
    required ReportProgress progress,
    @Default([]) List<ReportArtifact> artifacts,
    Map<String, dynamic>? error,
  }) = _ReportStatusResponse;

  factory ReportStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$ReportStatusResponseFromJson(json);
}

/// 本地持久化的报告概要。后端当前没有列表接口，客户端只保存概要。
@freezed
class ReportSummary with _$ReportSummary {
  const factory ReportSummary({
    @JsonKey(name: 'report_id') required String reportId,
    @JsonKey(name: 'report_type') required ReportType reportType,
    required String title,
    required String question,
    required ReportStatus status,
    @JsonKey(name: 'created_at') required int createdAt,
    @JsonKey(name: 'last_accessed') required int lastAccessed,
  }) = _ReportSummary;

  factory ReportSummary.fromJson(Map<String, dynamic> json) =>
      _$ReportSummaryFromJson(json);
}

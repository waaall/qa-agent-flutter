// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportContextImpl _$$ReportContextImplFromJson(Map<String, dynamic> json) =>
    _$ReportContextImpl(
      plant: json['plant'] as String?,
      unit: json['unit'] as String?,
      deviceType: json['device_type'] as String?,
      deviceNo: json['device_no'] as String?,
      pointCodes:
          (json['point_codes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      incidentId: json['incident_id'] as String?,
      sessionId: json['session_id'] as String?,
      extraConstraints:
          (json['extra_constraints'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ReportContextImplToJson(_$ReportContextImpl instance) =>
    <String, dynamic>{
      'plant': instance.plant,
      'unit': instance.unit,
      'device_type': instance.deviceType,
      'device_no': instance.deviceNo,
      'point_codes': instance.pointCodes,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'incident_id': instance.incidentId,
      'session_id': instance.sessionId,
      'extra_constraints': instance.extraConstraints,
    };

_$ReportOutputImpl _$$ReportOutputImplFromJson(Map<String, dynamic> json) =>
    _$ReportOutputImpl(
      format: json['format'] as String? ?? 'markdown',
      language: json['language'] as String? ?? 'zh-CN',
    );

Map<String, dynamic> _$$ReportOutputImplToJson(_$ReportOutputImpl instance) =>
    <String, dynamic>{'format': instance.format, 'language': instance.language};

_$CreateReportRequestImpl _$$CreateReportRequestImplFromJson(
  Map<String, dynamic> json,
) => _$CreateReportRequestImpl(
  reportType: $enumDecode(_$ReportTypeEnumMap, json['report_type']),
  question: json['question'] as String,
  title: json['title'] as String?,
  context: json['context'] == null
      ? const ReportContext()
      : ReportContext.fromJson(json['context'] as Map<String, dynamic>),
  output: json['output'] == null
      ? const ReportOutput()
      : ReportOutput.fromJson(json['output'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$CreateReportRequestImplToJson(
  _$CreateReportRequestImpl instance,
) => <String, dynamic>{
  'report_type': _$ReportTypeEnumMap[instance.reportType]!,
  'question': instance.question,
  'title': instance.title,
  'context': instance.context,
  'output': instance.output,
};

const _$ReportTypeEnumMap = {
  ReportType.trendAnalysis: 'trend_analysis',
  ReportType.diagnosisReport: 'diagnosis_report',
  ReportType.incidentReview: 'incident_review',
  ReportType.comprehensiveAnalysis: 'comprehensive_analysis',
};

_$ReportCreatedResponseImpl _$$ReportCreatedResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ReportCreatedResponseImpl(
  reportId: json['report_id'] as String,
  status: $enumDecode(_$ReportStatusEnumMap, json['status']),
);

Map<String, dynamic> _$$ReportCreatedResponseImplToJson(
  _$ReportCreatedResponseImpl instance,
) => <String, dynamic>{
  'report_id': instance.reportId,
  'status': _$ReportStatusEnumMap[instance.status]!,
};

const _$ReportStatusEnumMap = {
  ReportStatus.queued: 'queued',
  ReportStatus.running: 'running',
  ReportStatus.drafting: 'drafting',
  ReportStatus.reviewing: 'reviewing',
  ReportStatus.completed: 'completed',
  ReportStatus.failed: 'failed',
  ReportStatus.cancelled: 'cancelled',
};

_$ReportProgressImpl _$$ReportProgressImplFromJson(Map<String, dynamic> json) =>
    _$ReportProgressImpl(
      phase: json['phase'] as String? ?? '',
      message: json['message'] as String? ?? '',
      evidenceCount: (json['evidence_count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ReportProgressImplToJson(
  _$ReportProgressImpl instance,
) => <String, dynamic>{
  'phase': instance.phase,
  'message': instance.message,
  'evidence_count': instance.evidenceCount,
};

_$ReportArtifactImpl _$$ReportArtifactImplFromJson(Map<String, dynamic> json) =>
    _$ReportArtifactImpl(
      name: json['name'] as String,
      kind: json['kind'] as String,
    );

Map<String, dynamic> _$$ReportArtifactImplToJson(
  _$ReportArtifactImpl instance,
) => <String, dynamic>{'name': instance.name, 'kind': instance.kind};

_$ReportStatusResponseImpl _$$ReportStatusResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ReportStatusResponseImpl(
  reportId: json['report_id'] as String,
  reportType: $enumDecode(_$ReportTypeEnumMap, json['report_type']),
  status: $enumDecode(_$ReportStatusEnumMap, json['status']),
  progress: ReportProgress.fromJson(json['progress'] as Map<String, dynamic>),
  artifacts:
      (json['artifacts'] as List<dynamic>?)
          ?.map((e) => ReportArtifact.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  error: json['error'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$$ReportStatusResponseImplToJson(
  _$ReportStatusResponseImpl instance,
) => <String, dynamic>{
  'report_id': instance.reportId,
  'report_type': _$ReportTypeEnumMap[instance.reportType]!,
  'status': _$ReportStatusEnumMap[instance.status]!,
  'progress': instance.progress,
  'artifacts': instance.artifacts,
  'error': instance.error,
};

_$ReportSummaryImpl _$$ReportSummaryImplFromJson(Map<String, dynamic> json) =>
    _$ReportSummaryImpl(
      reportId: json['report_id'] as String,
      reportType: $enumDecode(_$ReportTypeEnumMap, json['report_type']),
      title: json['title'] as String,
      question: json['question'] as String,
      status: $enumDecode(_$ReportStatusEnumMap, json['status']),
      createdAt: (json['created_at'] as num).toInt(),
      lastAccessed: (json['last_accessed'] as num).toInt(),
    );

Map<String, dynamic> _$$ReportSummaryImplToJson(_$ReportSummaryImpl instance) =>
    <String, dynamic>{
      'report_id': instance.reportId,
      'report_type': _$ReportTypeEnumMap[instance.reportType]!,
      'title': instance.title,
      'question': instance.question,
      'status': _$ReportStatusEnumMap[instance.status]!,
      'created_at': instance.createdAt,
      'last_accessed': instance.lastAccessed,
    };

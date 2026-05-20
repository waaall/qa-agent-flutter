import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/report.dart';

part 'report_state.freezed.dart';

/// 报告工作区状态。
@freezed
class ReportState with _$ReportState {
  const factory ReportState({
    @Default([]) List<ReportSummary> reports,
    String? currentReportId,
    ReportStatusResponse? currentReportDetail,
    @Default(false) bool isLoading,
    String? error,
  }) = _ReportState;
}

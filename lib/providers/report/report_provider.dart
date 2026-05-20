import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/storage/report_storage.dart';
import '../../core/utils/logger.dart';
import '../../models/report.dart';
import '../../services/report_service.dart';
import '../chat/chat_provider.dart';
import 'report_state.dart';

/// 报告服务 Provider。
final reportServiceProvider = Provider<ReportService>((ref) {
  final client = ref.watch(apiClientProvider);
  return ReportService(client);
});

/// 报告状态 Provider。
final reportNotifierProvider =
    StateNotifierProvider<ReportNotifier, ReportState>((ref) {
      return ReportNotifier(ref);
    });

/// 报告状态管理。
class ReportNotifier extends StateNotifier<ReportState> {
  final Ref _ref;
  final Set<String> _pollingReportIds = <String>{};

  ReportNotifier(this._ref) : super(const ReportState()) {
    loadReports();
  }

  ReportService get _service => _ref.read(reportServiceProvider);

  /// 加载本地报告概要。
  void loadReports() {
    state = state.copyWith(reports: ReportStorage.loadReports());
  }

  /// 创建报告并启动后台轮询。
  Future<String?> createReport(CreateReportRequest request) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final created = await _service.create(request);
      final now = DateTime.now().millisecondsSinceEpoch;
      final summary = ReportSummary(
        reportId: created.reportId,
        reportType: request.reportType,
        title: _buildTitle(request),
        question: request.question.trim(),
        status: created.status,
        createdAt: now,
        lastAccessed: now,
      );

      final reports = [
        summary,
        ...state.reports.where((item) => item.reportId != summary.reportId),
      ];
      state = state.copyWith(
        reports: reports,
        currentReportId: summary.reportId,
        currentReportDetail: null,
        isLoading: false,
      );
      await ReportStorage.saveReports(reports);
      _startPolling(summary.reportId);
      return summary.reportId;
    } catch (e) {
      Logger.error('创建报告失败', e);
      state = state.copyWith(isLoading: false, error: e.toString());
      return null;
    }
  }

  /// 选择报告并刷新详情。
  Future<void> selectReport(String? reportId) async {
    state = state.copyWith(
      currentReportId: reportId,
      currentReportDetail: null,
    );
    if (reportId == null) return;
    await refreshReport(reportId);
  }

  /// 刷新报告状态。
  Future<void> refreshReport(String reportId) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final detail = await _service.getStatus(reportId);
      await _syncReportStatus(reportId, detail.status);
      state = state.copyWith(
        currentReportDetail: state.currentReportId == reportId
            ? detail
            : state.currentReportDetail,
        isLoading: false,
      );
      if (!detail.status.isTerminal) {
        _startPolling(reportId);
      }
    } catch (e) {
      Logger.error('刷新报告失败', e);
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  /// 取消报告。
  Future<void> cancelReport(String reportId) async {
    try {
      await _service.cancel(reportId);
      await refreshReport(reportId);
    } catch (e) {
      Logger.error('取消报告失败', e);
      state = state.copyWith(error: e.toString());
    }
  }

  /// 重试报告。
  Future<void> retryReport(String reportId) async {
    try {
      await _service.retry(reportId);
      _startPolling(reportId);
      await refreshReport(reportId);
    } catch (e) {
      Logger.error('重试报告失败', e);
      state = state.copyWith(error: e.toString());
    }
  }

  /// 仅移除本地概要；后端当前没有删除接口。
  Future<void> removeLocalReport(String reportId) async {
    final reports = state.reports
        .where((item) => item.reportId != reportId)
        .toList();
    state = state.copyWith(
      reports: reports,
      currentReportId: state.currentReportId == reportId
          ? null
          : state.currentReportId,
      currentReportDetail: state.currentReportId == reportId
          ? null
          : state.currentReportDetail,
    );
    await ReportStorage.saveReports(reports);
  }

  /// 读取 artifact 文本。
  Future<String> getArtifactText(String reportId, String artifactName) {
    return _service.getArtifactText(reportId, artifactName);
  }

  void _startPolling(String reportId) {
    if (_pollingReportIds.contains(reportId)) return;
    _pollingReportIds.add(reportId);

    unawaited(() async {
      try {
        await for (final detail in _service.pollStatus(reportId)) {
          await _syncReportStatus(reportId, detail.status);
          if (state.currentReportId == reportId) {
            state = state.copyWith(currentReportDetail: detail);
          }
          if (detail.status.isTerminal) break;
        }
      } catch (e) {
        Logger.error('报告轮询失败', e);
      } finally {
        _pollingReportIds.remove(reportId);
      }
    }());
  }

  Future<void> _syncReportStatus(String reportId, ReportStatus status) async {
    final reports = state.reports.map((item) {
      if (item.reportId != reportId) return item;
      return item.copyWith(
        status: status,
        lastAccessed: DateTime.now().millisecondsSinceEpoch,
      );
    }).toList()..sort((a, b) => b.lastAccessed.compareTo(a.lastAccessed));

    state = state.copyWith(reports: reports);
    await ReportStorage.saveReports(reports);
  }

  String _buildTitle(CreateReportRequest request) {
    final explicit = request.title?.trim();
    if (explicit != null && explicit.isNotEmpty) return explicit;
    final question = request.question.trim();
    if (question.length <= 24) return question;
    return '${question.substring(0, 24)}…';
  }
}

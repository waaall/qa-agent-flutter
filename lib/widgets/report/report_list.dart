import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/report/report_provider.dart';
import 'create_report_dialog.dart';
import 'report_list_item.dart';

/// 报告侧边列表。
class ReportList extends ConsumerWidget {
  final VoidCallback? onReportTap;

  const ReportList({super.key, this.onReportTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final reportState = ref.watch(reportNotifierProvider);
    final notifier = ref.read(reportNotifierProvider.notifier);

    return Container(
      color: theme.scaffoldBackgroundColor,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    '报告列表',
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.add, size: 20),
                label: const Text('新建报告'),
                onPressed: () => showCreateReportDialog(context, ref),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: reportState.reports.isEmpty
                ? Center(
                    child: Text(
                      '暂无报告',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurface.withValues(
                          alpha: 0.5,
                        ),
                      ),
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    itemCount: reportState.reports.length,
                    itemBuilder: (context, index) {
                      final report = reportState.reports[index];
                      return ReportListItem(
                        report: report,
                        isActive:
                            report.reportId == reportState.currentReportId,
                        onTap: () {
                          notifier.selectReport(report.reportId);
                          onReportTap?.call();
                        },
                        onDelete: () =>
                            notifier.removeLocalReport(report.reportId),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

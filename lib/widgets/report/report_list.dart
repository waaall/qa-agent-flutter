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
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    '报告列表',
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
          // 与「新对话」对齐:用 OutlinedButton,克制不抢主区域焦点
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                icon: const Icon(Icons.add, size: 18),
                label: const Text('新建报告'),
                onPressed: () => showCreateReportDialog(context, ref),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: reportState.reports.isEmpty
                ? Center(
                    child: Text(
                      '暂无报告',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
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

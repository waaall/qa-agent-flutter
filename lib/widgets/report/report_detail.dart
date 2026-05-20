import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/report.dart';
import '../../providers/report/report_provider.dart';
import 'artifact_viewer.dart';

/// 报告详情视图。
class ReportDetail extends ConsumerWidget {
  const ReportDetail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(reportNotifierProvider);
    final notifier = ref.read(reportNotifierProvider.notifier);
    final currentReportId = state.currentReportId;

    if (currentReportId == null) {
      return const Center(child: Text('选择左侧报告或新建一个'));
    }

    final summary = state.reports
        .where((item) => item.reportId == currentReportId)
        .firstOrNull;
    if (summary == null) {
      return const Center(child: Text('报告不存在或已从本地移除'));
    }

    final detail = state.currentReportDetail;
    final status = detail?.status ?? summary.status;
    final artifacts = _sortArtifacts(detail?.artifacts ?? const []);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  summary.title,
                  style: Theme.of(context).textTheme.titleLarge,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              IconButton(
                tooltip: '刷新状态',
                onPressed: () => notifier.refreshReport(currentReportId),
                icon: const Icon(Icons.refresh),
              ),
              if (status.isActive)
                TextButton.icon(
                  onPressed: () => notifier.cancelReport(currentReportId),
                  icon: const Icon(Icons.cancel_outlined),
                  label: const Text('取消'),
                ),
              if (status == ReportStatus.failed ||
                  status == ReportStatus.cancelled)
                FilledButton.icon(
                  onPressed: () => notifier.retryReport(currentReportId),
                  icon: const Icon(Icons.replay),
                  label: const Text('重试'),
                ),
            ],
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              Chip(label: Text(summary.reportType.label)),
              Chip(label: Text(status.label)),
              Chip(label: Text('ID: ${summary.reportId}')),
            ],
          ),
          const SizedBox(height: 12),
          Text('问题：${summary.question}'),
          const SizedBox(height: 12),
          LinearProgressIndicator(
            value: _progressValue(status),
            color: status == ReportStatus.failed
                ? Theme.of(context).colorScheme.error
                : null,
          ),
          const SizedBox(height: 8),
          if (detail?.progress != null)
            Text(
              '${detail!.progress.phase}${detail.progress.message.isNotEmpty ? ' · ${detail.progress.message}' : ''}${detail.progress.evidenceCount > 0 ? ' · 证据数 ${detail.progress.evidenceCount}' : ''}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          if (state.error != null) ...[
            const SizedBox(height: 8),
            Text(
              state.error!,
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          ],
          if (detail?.error != null) ...[
            const SizedBox(height: 8),
            Text(
              detail!.error.toString(),
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          ],
          const Divider(height: 24),
          Expanded(
            child: state.isLoading && detail == null
                ? const Center(child: CircularProgressIndicator())
                : artifacts.isEmpty
                ? Center(child: Text(status.isActive ? '任务运行中，暂无产物' : '暂无产物'))
                : DefaultTabController(
                    length: artifacts.length,
                    child: Column(
                      children: [
                        TabBar(
                          isScrollable: true,
                          tabs: artifacts
                              .map((artifact) => Tab(text: artifact.name))
                              .toList(),
                        ),
                        Expanded(
                          child: TabBarView(
                            children: artifacts
                                .map(
                                  (artifact) => ArtifactViewer(
                                    reportId: currentReportId,
                                    artifactName: artifact.name,
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  List<ReportArtifact> _sortArtifacts(List<ReportArtifact> artifacts) {
    const priority = ['final.md', 'draft.md', 'outline.md', 'run_meta.json'];
    int indexOf(String name) {
      final index = priority.indexOf(name);
      return index == -1 ? priority.length : index;
    }

    return [...artifacts]..sort((a, b) {
      final left = indexOf(a.name);
      final right = indexOf(b.name);
      if (left != right) return left.compareTo(right);
      return a.name.compareTo(b.name);
    });
  }

  double _progressValue(ReportStatus status) {
    switch (status) {
      case ReportStatus.queued:
        return 0.15;
      case ReportStatus.running:
        return 0.4;
      case ReportStatus.drafting:
        return 0.65;
      case ReportStatus.reviewing:
        return 0.85;
      case ReportStatus.completed:
      case ReportStatus.failed:
      case ReportStatus.cancelled:
        return 1;
    }
  }
}

/// Iterable.firstOrNull 轻量扩展，避免为单个用法引入集合工具依赖。
extension _FirstOrNull<T> on Iterable<T> {
  T? get firstOrNull => isEmpty ? null : first;
}

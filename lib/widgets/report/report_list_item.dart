import 'package:flutter/material.dart';

import '../../models/report.dart';

/// 报告列表项。
class ReportListItem extends StatelessWidget {
  final ReportSummary report;
  final bool isActive;
  final VoidCallback onTap;
  final VoidCallback onDelete;

  const ReportListItem({
    super.key,
    required this.report,
    required this.isActive,
    required this.onTap,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: isActive ? 2 : 0,
      color: isActive ? theme.colorScheme.primaryContainer : null,
      child: ListTile(
        dense: true,
        title: Text(
          report.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Wrap(
              spacing: 6,
              runSpacing: 4,
              children: [
                Chip(
                  label: Text(report.reportType.label),
                  visualDensity: VisualDensity.compact,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                Chip(
                  label: Text(report.status.label),
                  visualDensity: VisualDensity.compact,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ],
            ),
          ],
        ),
        onTap: onTap,
        trailing: IconButton(
          icon: const Icon(Icons.delete_outline, size: 20),
          tooltip: '从本地列表移除',
          onPressed: onDelete,
        ),
      ),
    );
  }
}

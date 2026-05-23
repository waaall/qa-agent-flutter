import 'package:flutter/material.dart';

import '../common/workspace_switcher.dart';
import 'report_detail.dart';

/// 报告主区域容器。
class ReportContainer extends StatelessWidget {
  final VoidCallback? onMenuTap;
  final bool showMenuButton;

  const ReportContainer({
    super.key,
    this.onMenuTap,
    this.showMenuButton = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Container(
          height: 56,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            border: Border(
              bottom: BorderSide(color: theme.colorScheme.outlineVariant),
            ),
          ),
          child: Row(
            children: [
              if (showMenuButton)
                IconButton(
                  icon: const Icon(Icons.menu, size: 20),
                  onPressed: onMenuTap,
                  tooltip: '菜单',
                ),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  '报告',
                  style: theme.textTheme.titleMedium,
                ),
              ),
              const WorkspaceSwitcher(),
            ],
          ),
        ),
        const Expanded(child: ReportDetail()),
      ],
    );
  }
}

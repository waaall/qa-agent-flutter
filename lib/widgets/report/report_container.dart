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
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            border: Border(
              bottom: BorderSide(
                color: theme.dividerTheme.color ?? theme.dividerColor,
              ),
            ),
          ),
          child: Row(
            children: [
              if (showMenuButton)
                IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: onMenuTap,
                  tooltip: '菜单',
                ),
              const SizedBox(width: 8),
              const Expanded(
                child: Text(
                  '报告',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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

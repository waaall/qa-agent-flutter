import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/constants.dart';
import '../../providers/ui/sidebar_provider.dart';
import '../../widgets/report/report_container.dart';
import '../../widgets/report/report_list.dart';
import '../../widgets/sidebar/session_list.dart';
import '../../widgets/chat/chat_container.dart';

/// 主页。
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenType = context.screenType;
    final isMobile = screenType == ScreenType.mobile;
    final isSidebarExpanded = ref.watch(sidebarExpandedProvider);
    final workspace = ref.watch(workspaceProvider);

    final sidebar = workspace == Workspace.chat
        ? SessionList(
            onSessionTap: isMobile ? () => Navigator.of(context).pop() : null,
          )
        : ReportList(
            onReportTap: isMobile ? () => Navigator.of(context).pop() : null,
          );

    return Scaffold(
      drawer: isMobile ? Drawer(child: sidebar) : null,
      body: Row(
        children: [
          if (!isMobile && isSidebarExpanded) ...[
            SizedBox(width: UIConstants.sidebarWidth, child: sidebar),
            const VerticalDivider(width: 1),
          ],
          Expanded(
            child: Builder(
              builder: (innerContext) {
                final onMenuTap = isMobile
                    ? () => Scaffold.of(innerContext).openDrawer()
                    : () => ref.read(sidebarControllerProvider).toggle();
                return workspace == Workspace.chat
                    ? ChatContainer(onMenuTap: onMenuTap, showMenuButton: true)
                    : ReportContainer(
                        onMenuTap: onMenuTap,
                        showMenuButton: true,
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}

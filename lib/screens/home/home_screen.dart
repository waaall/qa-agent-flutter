import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/constants.dart';
import '../../providers/ui/sidebar_provider.dart';
import '../../widgets/sidebar/session_list.dart';
import '../../widgets/chat/chat_container.dart';

/// 主页
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenType = context.screenType;
    final isMobile = screenType == ScreenType.mobile;
    final isSidebarExpanded = ref.watch(sidebarExpandedProvider);

    return Scaffold(
      // 移动端使用 Drawer
      drawer: isMobile
          ? Drawer(
              child: SessionList(
                onSessionTap: () => Navigator.of(context).pop(),
              ),
            )
          : null,
      body: Row(
        children: [
          // 桌面端侧边栏
          if (!isMobile && isSidebarExpanded) ...[
            SizedBox(
              width: UIConstants.sidebarWidth,
              child: SessionList(
                onSessionTap: () {},
              ),
            ),
            const VerticalDivider(width: 1),
          ],
          // 聊天区域
          Expanded(
            child: Builder(
              builder: (context) => ChatContainer(
                onMenuTap: isMobile
                    ? () => Scaffold.of(context).openDrawer()
                    : () => ref.read(sidebarControllerProvider).toggle(),
                showMenuButton: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

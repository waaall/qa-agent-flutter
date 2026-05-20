import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 主工作区。
enum Workspace { chat, report }

/// 侧边栏展开状态 Provider。
final sidebarExpandedProvider = StateProvider<bool>((ref) => true);

/// 当前工作区 Provider。
final workspaceProvider = StateProvider<Workspace>((ref) => Workspace.chat);

/// 侧边栏控制器。
class SidebarController {
  final Ref _ref;

  SidebarController(this._ref);

  /// 切换侧边栏。
  void toggle() {
    _ref.read(sidebarExpandedProvider.notifier).state = !_ref.read(
      sidebarExpandedProvider,
    );
  }

  /// 展开侧边栏。
  void expand() {
    _ref.read(sidebarExpandedProvider.notifier).state = true;
  }

  /// 收起侧边栏。
  void collapse() {
    _ref.read(sidebarExpandedProvider.notifier).state = false;
  }
}

/// 侧边栏控制器 Provider。
final sidebarControllerProvider = Provider<SidebarController>((ref) {
  return SidebarController(ref);
});

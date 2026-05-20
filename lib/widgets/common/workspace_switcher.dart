import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/ui/sidebar_provider.dart';

/// 对话 / 报告工作区切换器。
class WorkspaceSwitcher extends ConsumerWidget {
  const WorkspaceSwitcher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final workspace = ref.watch(workspaceProvider);
    return SegmentedButton<Workspace>(
      segments: const [
        ButtonSegment(
          value: Workspace.chat,
          icon: Icon(Icons.chat_outlined, size: 18),
          label: Text('对话'),
        ),
        ButtonSegment(
          value: Workspace.report,
          icon: Icon(Icons.description_outlined, size: 18),
          label: Text('报告'),
        ),
      ],
      selected: {workspace},
      showSelectedIcon: false,
      onSelectionChanged: (value) {
        ref.read(workspaceProvider.notifier).state = value.first;
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/theme/theme_provider.dart';

/// 主题切换组件。
class ThemeToggle extends ConsumerWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);

    return SegmentedButton<ThemeMode>(
      segments: const [
        ButtonSegment(value: ThemeMode.light, label: Text('浅色')),
        ButtonSegment(value: ThemeMode.dark, label: Text('深色')),
        ButtonSegment(value: ThemeMode.system, label: Text('跟随系统')),
      ],
      selected: {themeMode},
      onSelectionChanged: (selection) {
        ref.read(themeModeProvider.notifier).setThemeMode(selection.first);
      },
    );
  }
}

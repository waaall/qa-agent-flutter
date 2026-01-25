import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../providers/theme/theme_provider.dart';
import '../../widgets/settings/theme_toggle.dart';
import '../../widgets/settings/backend_config_panel.dart';

/// 设置页
class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
        title: const Text('设置'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // 主题设置
          Card(
            child: ExpansionTile(
              leading: const Icon(Icons.palette_outlined),
              title: const Text('主题'),
              subtitle: Text(_getThemeModeText(themeMode)),
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: ThemeToggle(),
                ),
                SizedBox(height: 8),
              ],
            ),
          ),
          const SizedBox(height: 8),

          // 后端配置
          Card(
            child: ExpansionTile(
              leading: const Icon(Icons.dns_outlined),
              title: const Text('后端配置'),
              subtitle: const Text('配置 API 和 STT 服务地址'),
              children: const [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: BackendConfigPanel(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),

          // 关于
          Card(
            child: ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('关于'),
              subtitle: const Text('v1.0.0'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                showAboutDialog(
                  context: context,
                  applicationName: 'PowerPlantQA',
                  applicationVersion: '1.0.0',
                  applicationLegalese: '© 2024 智能问答系统',
                  children: [
                    const SizedBox(height: 16),
                    const Text('智能电厂问答系统 Flutter 版本'),
                    const Text('支持 iOS、Android、macOS、Windows、Linux、Web'),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  String _getThemeModeText(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.light:
        return '浅色';
      case ThemeMode.dark:
        return '深色';
      case ThemeMode.system:
        return '跟随系统';
    }
  }
}

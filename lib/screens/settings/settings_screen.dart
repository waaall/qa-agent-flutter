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
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, size: 20),
          onPressed: () => context.go('/'),
        ),
        title: const Text('设置'),
        // 头部底部添加发丝边框,与主区域头部统一
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(
            height: 1,
            color: theme.colorScheme.outlineVariant,
          ),
        ),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 720),
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              // 主题
              Card(
                child: ExpansionTile(
                  shape: const Border(),
                  collapsedShape: const Border(),
                  leading: Icon(
                    Icons.palette_outlined,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  title: Text('主题', style: theme.textTheme.titleSmall),
                  subtitle: Text(
                    _getThemeModeText(themeMode),
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                      child: ThemeToggle(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              // 后端配置
              Card(
                child: ExpansionTile(
                  shape: const Border(),
                  collapsedShape: const Border(),
                  leading: Icon(
                    Icons.dns_outlined,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  title: Text('后端配置', style: theme.textTheme.titleSmall),
                  subtitle: Text(
                    '配置 Agent、STT 和 TTS 服务地址',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: BackendConfigPanel(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              // 关于
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.info_outline,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  title: Text('关于', style: theme.textTheme.titleSmall),
                  subtitle: Text(
                    'v1.0.0',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
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
        ),
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

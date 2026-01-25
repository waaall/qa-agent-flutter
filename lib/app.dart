import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'theme/app_theme.dart';
import 'providers/theme/theme_provider.dart';
import 'screens/home/home_screen.dart';
import 'screens/settings/settings_screen.dart';

/// 路由配置
final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
  ],
);

/// App 根组件
class QAAgentApp extends ConsumerWidget {
  const QAAgentApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 从 provider 读取主题模式
    final themeMode = ref.watch(themeModeProvider);

    return MaterialApp.router(
      title: 'PowerPlantQA',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: themeMode,
      routerConfig: _router,
    );
  }
}

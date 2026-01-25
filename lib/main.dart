import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:window_manager/window_manager.dart';

import 'app.dart';
import 'core/storage/local_storage.dart';
import 'core/storage/session_storage.dart';
import 'core/storage/config_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 初始化存储层
  await _initStorage();

  // 桌面端窗口配置
  await _initDesktopWindow();

  runApp(
    const ProviderScope(
      child: QAAgentApp(),
    ),
  );
}

/// 初始化存储
Future<void> _initStorage() async {
  await Hive.initFlutter();
  await LocalStorage.init();
  await SessionStorage.init();
  await ConfigStorage.init();
}

/// 初始化桌面窗口
Future<void> _initDesktopWindow() async {
  if (kIsWeb) return;
  if (!Platform.isWindows && !Platform.isMacOS && !Platform.isLinux) return;

  await windowManager.ensureInitialized();
  await windowManager.waitUntilReadyToShow(
    const WindowOptions(
      size: Size(1200, 800),
      minimumSize: Size(800, 600),
      title: 'PowerPlantQA',
      center: true,
    ),
    () async {
      await windowManager.show();
      await windowManager.focus();
    },
  );
}

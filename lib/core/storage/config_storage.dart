import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

import '../../config/app_config.dart';
import '../../models/backend_config.dart';
import '../utils/logger.dart';

/// 配置存储
class ConfigStorage {
  static const String _boxName = 'config';
  static Box<String>? _box;

  /// 初始化
  static Future<void> init() async {
    _box = await Hive.openBox<String>(_boxName);
  }

  static Box<String> get _instance {
    if (_box == null) {
      throw StateError('ConfigStorage 未初始化，请先调用 ConfigStorage.init()');
    }
    return _box!;
  }

  /// 保存后端配置
  static Future<void> saveConfig(BackendConfig config) async {
    try {
      await _instance.put(
        AppConfig.configStorageKey,
        jsonEncode(config.toJson()),
      );
    } catch (e) {
      Logger.error('保存配置失败', e);
    }
  }

  /// 加载后端配置
  static BackendConfig loadConfig() {
    try {
      final json = _instance.get(AppConfig.configStorageKey);
      if (json == null) return BackendConfig.defaultConfig;

      return BackendConfig.fromJson(jsonDecode(json) as Map<String, dynamic>);
    } catch (e) {
      Logger.error('加载配置失败', e);
      return BackendConfig.defaultConfig;
    }
  }

  /// 保存主题模式
  static Future<void> saveThemeMode(String mode) async {
    await _instance.put(AppConfig.themeStorageKey, mode);
  }

  /// 加载主题模式
  static String? loadThemeMode() {
    return _instance.get(AppConfig.themeStorageKey);
  }
}

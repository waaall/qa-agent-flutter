import 'package:shared_preferences/shared_preferences.dart';

/// 本地存储封装（SharedPreferences）
class LocalStorage {
  static SharedPreferences? _prefs;

  /// 初始化
  static Future<void> init() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  static SharedPreferences get _instance {
    if (_prefs == null) {
      throw StateError('LocalStorage 未初始化，请先调用 LocalStorage.init()');
    }
    return _prefs!;
  }

  /// 保存字符串
  static Future<bool> setString(String key, String value) {
    return _instance.setString(key, value);
  }

  /// 获取字符串
  static String? getString(String key) {
    return _instance.getString(key);
  }

  /// 保存整数
  static Future<bool> setInt(String key, int value) {
    return _instance.setInt(key, value);
  }

  /// 获取整数
  static int? getInt(String key) {
    return _instance.getInt(key);
  }

  /// 保存布尔值
  static Future<bool> setBool(String key, bool value) {
    return _instance.setBool(key, value);
  }

  /// 获取布尔值
  static bool? getBool(String key) {
    return _instance.getBool(key);
  }

  /// 保存双精度浮点数
  static Future<bool> setDouble(String key, double value) {
    return _instance.setDouble(key, value);
  }

  /// 获取双精度浮点数
  static double? getDouble(String key) {
    return _instance.getDouble(key);
  }

  /// 保存字符串列表
  static Future<bool> setStringList(String key, List<String> value) {
    return _instance.setStringList(key, value);
  }

  /// 获取字符串列表
  static List<String>? getStringList(String key) {
    return _instance.getStringList(key);
  }

  /// 删除指定键
  static Future<bool> remove(String key) {
    return _instance.remove(key);
  }

  /// 清空所有数据
  static Future<bool> clear() {
    return _instance.clear();
  }

  /// 检查键是否存在
  static bool containsKey(String key) {
    return _instance.containsKey(key);
  }
}

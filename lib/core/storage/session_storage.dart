import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

import '../../config/app_config.dart';
import '../../models/session.dart';
import '../utils/logger.dart';

/// 会话存储（Hive）
class SessionStorage {
  static const String _boxName = 'sessions';
  static Box<String>? _box;

  /// 初始化
  static Future<void> init() async {
    _box = await Hive.openBox<String>(_boxName);
  }

  static Box<String> get _instance {
    if (_box == null) {
      throw StateError('SessionStorage 未初始化，请先调用 SessionStorage.init()');
    }
    return _box!;
  }

  /// 保存所有会话
  static Future<void> saveSessions(List<Session> sessions) async {
    try {
      final jsonList = sessions.map((s) => s.toJson()).toList();
      await _instance.put(
        AppConfig.sessionStorageKey,
        jsonEncode(jsonList),
      );
    } catch (e) {
      Logger.error('保存会话失败', e);
    }
  }

  /// 加载所有会话
  static List<Session> loadSessions() {
    try {
      final json = _instance.get(AppConfig.sessionStorageKey);
      if (json == null) return [];

      final List<dynamic> jsonList = jsonDecode(json);
      return jsonList
          .map((j) => Session.fromJson(j as Map<String, dynamic>))
          .toList();
    } catch (e) {
      Logger.error('加载会话失败', e);
      return [];
    }
  }

  /// 添加会话
  static Future<void> addSession(Session session) async {
    final sessions = loadSessions();
    sessions.insert(0, session);
    await saveSessions(sessions);
  }

  /// 更新会话
  static Future<void> updateSession(
    String sessionId,
    Session Function(Session) updater,
  ) async {
    final sessions = loadSessions();
    final index = sessions.indexWhere((s) => s.sessionId == sessionId);
    if (index != -1) {
      sessions[index] = updater(sessions[index]);
      await saveSessions(sessions);
    }
  }

  /// 删除会话
  static Future<void> removeSession(String sessionId) async {
    final sessions = loadSessions();
    sessions.removeWhere((s) => s.sessionId == sessionId);
    await saveSessions(sessions);
  }

  /// 清空所有会话
  static Future<void> clearSessions() async {
    await _instance.delete(AppConfig.sessionStorageKey);
  }
}

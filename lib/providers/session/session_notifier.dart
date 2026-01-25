import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/session.dart';
import '../../core/storage/session_storage.dart';

/// 会话状态管理
class SessionNotifier extends StateNotifier<SessionState> {
  SessionNotifier() : super(const SessionState()) {
    _loadSessions();
  }

  /// 从本地存储加载会话
  void _loadSessions() {
    final sessions = SessionStorage.loadSessions();
    // 按最后访问时间倒序排列
    sessions.sort((a, b) => b.lastAccessed.compareTo(a.lastAccessed));
    state = state.copyWith(sessions: sessions);
  }

  /// 添加会话
  void addSession(Session session) {
    // 检查是否已存在
    if (state.sessions.any((s) => s.sessionId == session.sessionId)) {
      return;
    }

    state = state.copyWith(
      sessions: [session, ...state.sessions],
    );
    _saveSessions();
  }

  /// 更新会话
  void updateSession(String sessionId, Session Function(Session) updater) {
    state = state.copyWith(
      sessions: state.sessions.map((s) {
        if (s.sessionId == sessionId) {
          return updater(s);
        }
        return s;
      }).toList(),
    );
    _saveSessions();
  }

  /// 删除会话
  void removeSession(String sessionId) {
    state = state.copyWith(
      sessions: state.sessions.where((s) => s.sessionId != sessionId).toList(),
      currentSessionId: state.currentSessionId == sessionId
          ? null
          : state.currentSessionId,
    );
    _saveSessions();
  }

  /// 设置当前会话
  void setCurrentSession(String? sessionId) {
    state = state.copyWith(currentSessionId: sessionId);
  }

  /// 设置加载状态
  void setLoading(bool loading) {
    state = state.copyWith(isLoading: loading);
  }

  /// 保存到本地存储
  void _saveSessions() {
    SessionStorage.saveSessions(state.sessions);
  }

  /// 刷新会话列表
  void refresh() {
    _loadSessions();
  }
}

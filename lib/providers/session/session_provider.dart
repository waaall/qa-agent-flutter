import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/session.dart';
import '../../services/chat_service.dart';
import '../chat/chat_provider.dart';
import 'session_notifier.dart';

export 'session_notifier.dart';

/// 会话状态 Provider
final sessionNotifierProvider = StateNotifierProvider<SessionNotifier, SessionState>((ref) {
  return SessionNotifier();
});

/// 会话控制器 Provider
final sessionControllerProvider = Provider<SessionController>((ref) {
  return SessionController(ref);
});

/// 会话控制器
class SessionController {
  final Ref _ref;

  SessionController(this._ref);

  SessionNotifier get _sessionNotifier => _ref.read(sessionNotifierProvider.notifier);
  ChatService get _chatService => _ref.read(chatServiceProvider);

  /// 切换会话
  Future<void> switchSession(String sessionId) async {
    // 1. 设置当前会话
    _sessionNotifier.setCurrentSession(sessionId);

    // 2. 加载历史消息
    final chatController = _ref.read(chatControllerProvider);
    await chatController.loadSessionHistory(sessionId);

    // 3. 更新访问时间
    _sessionNotifier.updateSession(sessionId, (s) => s.copyWith(
      lastAccessed: DateTime.now().millisecondsSinceEpoch,
    ));
  }

  /// 创建新会话
  void createNewSession() {
    // 清空当前会话
    _sessionNotifier.setCurrentSession(null);

    // 清空消息
    _ref.read(chatNotifierProvider.notifier).clearMessages();
  }

  /// 删除会话
  Future<void> deleteSession(String sessionId) async {
    try {
      // 调用后端删除
      await _chatService.deleteSession(sessionId);
    } catch (e) {
      // 即使后端删除失败，也从本地移除
    }

    // 从本地删除
    _sessionNotifier.removeSession(sessionId);

    // 如果删除的是当前会话，清空消息
    final currentSessionId = _ref.read(sessionNotifierProvider).currentSessionId;
    if (currentSessionId == null) {
      _ref.read(chatNotifierProvider.notifier).clearMessages();
    }
  }
}

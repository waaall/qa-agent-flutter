import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../core/network/api_client.dart';
import '../../core/network/api_exception.dart';
import '../../models/message.dart';
import '../../models/session.dart';
import '../../services/chat_service.dart';
import '../session/session_provider.dart';
import 'chat_notifier.dart';
import 'chat_state.dart';

/// API 客户端 Provider
final apiClientProvider = Provider<ApiClient>((ref) {
  return ApiClient();
});

/// 聊天服务 Provider
final chatServiceProvider = Provider<ChatService>((ref) {
  final client = ref.watch(apiClientProvider);
  return ChatService(client);
});

/// 聊天状态 Provider
final chatNotifierProvider = StateNotifierProvider<ChatNotifier, ChatState>((ref) {
  return ChatNotifier();
});

/// 聊天控制器 Provider
final chatControllerProvider = Provider<ChatController>((ref) {
  return ChatController(ref);
});

/// 聊天控制器
class ChatController {
  final Ref _ref;
  final _uuid = const Uuid();

  ChatController(this._ref);

  ChatNotifier get _chatNotifier => _ref.read(chatNotifierProvider.notifier);
  SessionNotifier get _sessionNotifier => _ref.read(sessionNotifierProvider.notifier);
  ChatService get _chatService => _ref.read(chatServiceProvider);
  String? get _currentSessionId => _ref.read(sessionNotifierProvider).currentSessionId;

  /// 发送消息
  Future<void> sendMessage(String content) async {
    if (content.trim().isEmpty) return;

    // 1. 添加用户消息
    _chatNotifier.addMessage(role: 'user', content: content);

    // 2. 创建助手占位消息
    final assistantMsg = _chatNotifier.addMessage(
      role: 'assistant',
      content: '',
      isLoading: true,
    );

    _chatNotifier.setLoading(true);
    _chatNotifier.setError(null);

    try {
      // 3. 调用 API
      final response = await _chatService.sendMessage(
        query: content,
        sessionId: _currentSessionId,
        reset: _currentSessionId == null,
      );

      // 4. 更新助手消息
      _chatNotifier.updateMessage(assistantMsg.id, (m) => m.copyWith(
        content: response.answer,
        isLoading: false,
        metadata: MessageMetadata(
          queryType: response.queryType,
          enginesUsed: response.enginesUsed,
          confidence: response.confidence,
        ),
      ));

      // 5. 同步会话
      _syncSessionAfterResponse(response.sessionId, content);

    } on ApiException catch (e) {
      _chatNotifier.updateMessage(assistantMsg.id, (m) => m.copyWith(
        content: '抱歉，处理您的问题时出现错误。',
        isLoading: false,
        error: e.message,
      ));
      _chatNotifier.setError(e.message);
    } catch (e) {
      _chatNotifier.updateMessage(assistantMsg.id, (m) => m.copyWith(
        content: '抱歉，处理您的问题时出现错误。',
        isLoading: false,
        error: e.toString(),
      ));
      _chatNotifier.setError(e.toString());
    } finally {
      _chatNotifier.setLoading(false);
    }
  }

  /// 同步会话信息
  void _syncSessionAfterResponse(String sessionId, String userQuery) {
    final currentSessionId = _currentSessionId;

    if (currentSessionId == null || currentSessionId != sessionId) {
      // 新会话
      final session = Session(
        sessionId: sessionId,
        title: _generateTitle(userQuery),
        createdAt: DateTime.now().millisecondsSinceEpoch,
        lastAccessed: DateTime.now().millisecondsSinceEpoch,
        messageCount: 2,
      );
      _sessionNotifier.addSession(session);
      _sessionNotifier.setCurrentSession(sessionId);
    } else {
      // 更新已有会话
      _sessionNotifier.updateSession(sessionId, (s) => s.copyWith(
        lastAccessed: DateTime.now().millisecondsSinceEpoch,
        messageCount: s.messageCount + 2,
      ));
    }
  }

  /// 生成会话标题
  String _generateTitle(String query) {
    if (query.length <= 20) return query;
    return '${query.substring(0, 20)}...';
  }

  /// 加载会话历史
  Future<void> loadSessionHistory(String sessionId) async {
    try {
      _chatNotifier.setLoading(true);
      _chatNotifier.clearMessages();

      final history = await _chatService.getSessionHistory(sessionId);

      final messages = history.history.asMap().entries.map((entry) {
        final index = entry.key;
        final h = entry.value;
        return Message(
          id: '${sessionId}_${h.timestamp}_$index',
          role: h.role,
          content: h.content,
          timestamp: h.timestamp,
          metadata: h.additionalKwargs != null
              ? MessageMetadata(
                  queryType: h.additionalKwargs!['query_type'] as String?,
                  enginesUsed: (h.additionalKwargs!['engines_used'] as List?)?.cast<String>(),
                  confidence: h.additionalKwargs!['confidence'] as double?,
                )
              : null,
        );
      }).toList();

      _chatNotifier.setMessages(messages);
    } catch (e) {
      _chatNotifier.setError(e.toString());
    } finally {
      _chatNotifier.setLoading(false);
    }
  }
}

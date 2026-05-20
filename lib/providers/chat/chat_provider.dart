import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../core/network/api_client.dart';
import '../../core/network/api_exception.dart';
import '../../core/storage/config_storage.dart';
import '../../models/message.dart';
import '../../models/session.dart';
import '../../services/chat_service.dart';
import '../../services/index_service.dart';
import '../../services/system_service.dart';
import '../session/session_provider.dart';
import 'chat_notifier.dart';
import 'chat_state.dart';

/// API 客户端 Provider。
final apiClientProvider = Provider<ApiClient>((ref) {
  final config = ConfigStorage.loadConfig();
  return ApiClient(baseUrl: config.agentBaseUrl);
});

/// 聊天服务 Provider。
final chatServiceProvider = Provider<ChatService>((ref) {
  final client = ref.watch(apiClientProvider);
  return ChatService(client);
});

/// 系统服务 Provider。
final systemServiceProvider = Provider<SystemService>((ref) {
  final client = ref.watch(apiClientProvider);
  return SystemService(client);
});

/// 知识索引服务 Provider。
final indexServiceProvider = Provider<IndexService>((ref) {
  final client = ref.watch(apiClientProvider);
  return IndexService(client);
});

/// 聊天状态 Provider。
final chatNotifierProvider = StateNotifierProvider<ChatNotifier, ChatState>((
  ref,
) {
  return ChatNotifier();
});

/// 聊天控制器 Provider。
final chatControllerProvider = Provider<ChatController>((ref) {
  return ChatController(ref);
});

/// 聊天控制器。
class ChatController {
  final Ref _ref;
  final _uuid = const Uuid();

  ChatController(this._ref);

  ChatNotifier get _chatNotifier => _ref.read(chatNotifierProvider.notifier);
  SessionNotifier get _sessionNotifier =>
      _ref.read(sessionNotifierProvider.notifier);
  ChatService get _chatService => _ref.read(chatServiceProvider);
  String? get _currentSessionId =>
      _ref.read(sessionNotifierProvider).currentSessionId;

  /// 发送消息。
  Future<void> sendMessage(String content) async {
    final trimmed = content.trim();
    if (trimmed.isEmpty) return;

    _chatNotifier.addMessage(role: 'user', content: trimmed);

    final assistantMsg = _chatNotifier.addMessage(
      role: 'assistant',
      content: '',
      isLoading: true,
    );

    _chatNotifier.setLoading(true);
    _chatNotifier.setError(null);

    try {
      final response = await _chatService.sendMessage(
        query: trimmed,
        sessionId: _currentSessionId,
        reset: _currentSessionId == null,
      );

      _chatNotifier.updateMessage(
        assistantMsg.id,
        (m) => m.copyWith(
          content: response.answer,
          isLoading: false,
          metadata: MessageMetadata(
            enhancementApplied: response.enhancementApplied,
            matchedEntries: response.matchedEntries,
            extra: {if (response.raw != null) 'raw': response.raw},
          ),
        ),
      );

      _syncSessionAfterResponse(response.sessionId, trimmed);
    } on ApiException catch (e) {
      _setAssistantError(assistantMsg.id, e.message);
    } catch (e) {
      _setAssistantError(assistantMsg.id, e.toString());
    } finally {
      _chatNotifier.setLoading(false);
    }
  }

  void _setAssistantError(String messageId, String error) {
    _chatNotifier.updateMessage(
      messageId,
      (m) => m.copyWith(
        content: '抱歉，处理您的问题时出现错误。',
        isLoading: false,
        error: error,
      ),
    );
    _chatNotifier.setError(error);
  }

  /// 同步会话信息。
  void _syncSessionAfterResponse(String sessionId, String userQuery) {
    final currentSessionId = _currentSessionId;
    final now = DateTime.now().millisecondsSinceEpoch;

    if (currentSessionId == null || currentSessionId != sessionId) {
      final session = Session(
        sessionId: sessionId,
        title: _generateTitle(userQuery),
        createdAt: now,
        lastAccessed: now,
        messageCount: 2,
      );
      _sessionNotifier.addSession(session);
      _sessionNotifier.setCurrentSession(sessionId);
    } else {
      _sessionNotifier.updateSession(
        sessionId,
        (s) => s.copyWith(lastAccessed: now, messageCount: s.messageCount + 2),
      );
    }
  }

  /// 生成会话标题。
  String _generateTitle(String query) {
    if (query.length <= 20) return query;
    return '${query.substring(0, 20)}...';
  }

  /// 加载会话历史。
  Future<void> loadSessionHistory(String sessionId) async {
    try {
      _chatNotifier.setLoading(true);
      _chatNotifier.clearMessages();

      final history = await _chatService.getSessionHistory(sessionId);
      final fallbackBase = DateTime.now().millisecondsSinceEpoch;

      final messages = history.history
          .asMap()
          .entries
          .where(
            (entry) =>
                entry.value.role == 'user' || entry.value.role == 'assistant',
          )
          .map((entry) {
            final index = entry.key;
            final item = entry.value;
            final metadata = item.additionalKwargs ?? const <String, dynamic>{};
            return Message(
              id: _uuid.v5(
                Namespace.url.value,
                '$sessionId-$index-${item.role}-${item.content.hashCode}',
              ),
              role: item.role,
              content: item.content,
              timestamp: _extractTimestamp(metadata) ?? fallbackBase + index,
              metadata: metadata.isEmpty
                  ? null
                  : MessageMetadata(
                      enhancementApplied:
                          metadata['enhancement_applied'] == true,
                      matchedEntries:
                          (metadata['matched_entries'] as num?)?.toInt() ?? 0,
                      extra: metadata,
                    ),
            );
          })
          .toList();

      _chatNotifier.setMessages(messages);
    } catch (e) {
      _chatNotifier.setError(e.toString());
    } finally {
      _chatNotifier.setLoading(false);
    }
  }

  int? _extractTimestamp(Map<String, dynamic> metadata) {
    final value = metadata['timestamp'] ?? metadata['created_at'];
    if (value is int) return value < 1000000000000 ? value * 1000 : value;
    if (value is double) {
      final millis = value < 1000000000000 ? value * 1000 : value;
      return millis.round();
    }
    if (value is String) {
      return DateTime.tryParse(value)?.millisecondsSinceEpoch;
    }
    return null;
  }
}

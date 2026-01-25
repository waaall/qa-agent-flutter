import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../models/message.dart';
import 'chat_state.dart';

/// 聊天状态管理
class ChatNotifier extends StateNotifier<ChatState> {
  ChatNotifier() : super(const ChatState());

  final _uuid = const Uuid();

  /// 添加消息
  Message addMessage({
    required String role,
    required String content,
    bool isLoading = false,
    MessageMetadata? metadata,
  }) {
    final message = Message(
      id: _uuid.v4(),
      role: role,
      content: content,
      timestamp: DateTime.now().millisecondsSinceEpoch,
      isLoading: isLoading,
      metadata: metadata,
    );

    state = state.copyWith(
      messages: [...state.messages, message],
    );

    return message;
  }

  /// 更新消息
  void updateMessage(String id, Message Function(Message) updater) {
    state = state.copyWith(
      messages: state.messages.map((m) {
        if (m.id == id) {
          return updater(m);
        }
        return m;
      }).toList(),
    );
  }

  /// 删除消息
  void removeMessage(String id) {
    state = state.copyWith(
      messages: state.messages.where((m) => m.id != id).toList(),
    );
  }

  /// 清空消息
  void clearMessages() {
    state = state.copyWith(messages: []);
  }

  /// 设置消息列表（加载历史时使用）
  void setMessages(List<Message> messages) {
    state = state.copyWith(messages: messages);
  }

  /// 设置加载状态
  void setLoading(bool loading) {
    state = state.copyWith(isLoading: loading);
  }

  /// 设置错误
  void setError(String? error) {
    state = state.copyWith(error: error);
  }
}

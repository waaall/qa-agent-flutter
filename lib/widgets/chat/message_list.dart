import 'package:flutter/material.dart';

import '../../config/constants.dart';
import 'message_item.dart';

/// 消息列表
class MessageList extends StatelessWidget {
  final List<Map<String, dynamic>> messages;

  const MessageList({
    super.key,
    required this.messages,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 16),
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index];
        return Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: UIConstants.maxMessageWidth,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: MessageItem(
                role: message['role'] as String? ?? 'user',
                content: message['content'] as String? ?? '',
                isLoading: message['isLoading'] as bool? ?? false,
                metadata: message['metadata'] as Map<String, dynamic>?,
                error: message['error'] as String?,
              ),
            ),
          ),
        );
      },
    );
  }
}

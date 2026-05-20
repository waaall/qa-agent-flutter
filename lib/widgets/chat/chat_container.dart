import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/chat/chat_provider.dart';
import '../common/workspace_switcher.dart';
import 'message_list.dart';
import 'input_box.dart';

/// 聊天容器。
class ChatContainer extends ConsumerWidget {
  final VoidCallback? onMenuTap;
  final bool showMenuButton;

  const ChatContainer({super.key, this.onMenuTap, this.showMenuButton = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final chatState = ref.watch(chatNotifierProvider);
    final messages = chatState.messages;
    final isLoading = chatState.isLoading;

    return Column(
      children: [
        Container(
          height: 56,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            border: Border(
              bottom: BorderSide(
                color: theme.dividerTheme.color ?? theme.dividerColor,
              ),
            ),
          ),
          child: Row(
            children: [
              if (showMenuButton)
                IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: onMenuTap,
                  tooltip: '菜单',
                ),
              const SizedBox(width: 8),
              const Expanded(
                child: Text(
                  '智能问答',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              const WorkspaceSwitcher(),
            ],
          ),
        ),
        Expanded(
          child: messages.isEmpty
              ? _buildEmptyState(context)
              : MessageList(messages: messages),
        ),
        InputBox(
          isLoading: isLoading,
          onSend: (content) =>
              ref.read(chatControllerProvider).sendMessage(content),
        ),
      ],
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.chat_outlined,
            size: 64,
            color: theme.colorScheme.onSurface.withValues(alpha: 0.2),
          ),
          const SizedBox(height: 16),
          Text(
            '开始一个新对话',
            style: theme.textTheme.titleMedium?.copyWith(
              color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '输入您的问题，我会尽力为您解答',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurface.withValues(alpha: 0.4),
            ),
          ),
        ],
      ),
    );
  }
}

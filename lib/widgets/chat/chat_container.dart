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
        // 头部:白底 + 发丝底边
        Container(
          height: 56,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            border: Border(
              bottom: BorderSide(color: theme.colorScheme.outlineVariant),
            ),
          ),
          child: Row(
            children: [
              if (showMenuButton)
                IconButton(
                  icon: const Icon(Icons.menu, size: 20),
                  onPressed: onMenuTap,
                  tooltip: '菜单',
                ),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  '智能问答',
                  style: theme.textTheme.titleMedium,
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

    // 空状态:更细的图标 + 拉开标题/正文的字重与色阶层次
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainer,
              borderRadius: BorderRadius.circular(28),
            ),
            child: Icon(
              Icons.chat_bubble_outline,
              size: 26,
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            '开始一个新对话',
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(height: 6),
          Text(
            '输入您的问题,我会尽力为您解答',
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}

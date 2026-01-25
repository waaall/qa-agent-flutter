import 'package:flutter/material.dart';

import '../common/markdown_renderer.dart';
import '../common/source_tag.dart';
import '../common/loading_dots.dart';

/// 消息项
class MessageItem extends StatelessWidget {
  final String role;
  final String content;
  final bool isLoading;
  final Map<String, dynamic>? metadata;
  final String? error;

  const MessageItem({
    super.key,
    required this.role,
    required this.content,
    this.isLoading = false,
    this.metadata,
    this.error,
  });

  bool get isUser => role == 'user';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        // 助手头像
        if (!isUser) ...[
          _buildAvatar(context, isUser: false),
          const SizedBox(width: 12),
        ],
        // 消息内容
        Flexible(
          child: Column(
            crossAxisAlignment:
                isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: isUser
                      ? theme.colorScheme.primary
                      : theme.colorScheme.surface,
                  borderRadius: BorderRadius.circular(12),
                  border: isUser
                      ? null
                      : Border.all(
                          color: theme.dividerTheme.color ?? theme.dividerColor,
                        ),
                ),
                child: _buildContent(context),
              ),
              // 元数据标签
              if (!isUser && metadata != null && !isLoading) ...[
                const SizedBox(height: 4),
                SourceTag(
                  queryType: metadata?['queryType'] as String?,
                  enginesUsed: (metadata?['enginesUsed'] as List?)
                      ?.cast<String>(),
                ),
              ],
            ],
          ),
        ),
        // 用户头像
        if (isUser) ...[
          const SizedBox(width: 12),
          _buildAvatar(context, isUser: true),
        ],
      ],
    );
  }

  Widget _buildAvatar(BuildContext context, {required bool isUser}) {
    final theme = Theme.of(context);

    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: isUser
            ? theme.colorScheme.primary
            : theme.colorScheme.secondary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(
        isUser ? Icons.person : Icons.smart_toy,
        size: 18,
        color: Colors.white,
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    final theme = Theme.of(context);

    // 加载中
    if (isLoading) {
      return const LoadingDots();
    }

    // 错误
    if (error != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.error_outline,
            size: 16,
            color: theme.colorScheme.error,
          ),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              content.isNotEmpty ? content : '处理失败',
              style: TextStyle(color: theme.colorScheme.error),
            ),
          ),
        ],
      );
    }

    // 正常内容
    if (isUser) {
      return Text(
        content,
        style: const TextStyle(color: Colors.white),
      );
    }

    return MarkdownRenderer(content: content);
  }
}

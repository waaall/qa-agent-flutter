import 'package:flutter/material.dart';

import '../../models/message.dart';
import '../../theme/app_theme.dart';
import '../common/markdown_renderer.dart';
import '../common/loading_dots.dart';

/// 消息项。
class MessageItem extends StatelessWidget {
  final Message message;
  final bool ttsLoading;
  final bool ttsPlaying;
  final Future<void> Function(String messageId, String text)? onPlayTts;
  final Future<void> Function()? onStopTts;

  const MessageItem({
    super.key,
    required this.message,
    this.ttsLoading = false,
    this.ttsPlaying = false,
    this.onPlayTts,
    this.onStopTts,
  });

  bool get isUser => message.role == 'user';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment:
          isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (!isUser) ...[
          _buildAvatar(context, isUser: false),
          const SizedBox(width: 12),
        ],
        Flexible(
          child: Column(
            crossAxisAlignment:
                isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              _buildHeader(context),
              const SizedBox(height: 4),
              // 气泡:用户=主色实心,AI=表面色 + 发丝边框
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: isUser
                      ? theme.colorScheme.primary
                      : theme.colorScheme.surface,
                  borderRadius:
                      BorderRadius.circular(AppTheme.radiusCard),
                  border: isUser
                      ? null
                      : Border.all(color: theme.colorScheme.outlineVariant),
                ),
                child: _buildContent(context),
              ),
              if (!isUser && _hasEnhancementMetadata) ...[
                const SizedBox(height: 6),
                _buildMetadataChip(context),
              ],
            ],
          ),
        ),
        if (isUser) ...[
          const SizedBox(width: 12),
          _buildAvatar(context, isUser: true),
        ],
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    final theme = Theme.of(context);
    final canUseTts = !isUser &&
        !message.isLoading &&
        message.error == null &&
        message.content.trim().isNotEmpty &&
        onPlayTts != null &&
        onStopTts != null;

    if (isUser && !canUseTts) return const SizedBox.shrink();

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (!isUser)
          Text(
            'AI 助手',
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        if (canUseTts) ...[
          const SizedBox(width: 4),
          Tooltip(
            message: ttsPlaying
                ? '停止语音播放'
                : ttsLoading
                    ? '正在生成语音,点击停止'
                    : '播放语音',
            child: IconButton(
              visualDensity: VisualDensity.compact,
              iconSize: 16,
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(minWidth: 28, minHeight: 28),
              color: theme.colorScheme.onSurfaceVariant,
              onPressed: () {
                if (ttsLoading || ttsPlaying) {
                  onStopTts?.call();
                  return;
                }
                onPlayTts?.call(message.id, message.content);
              },
              icon: ttsLoading
                  ? const SizedBox(
                      width: 14,
                      height: 14,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : Icon(
                      ttsPlaying
                          ? Icons.pause_circle_outline
                          : Icons.volume_up_outlined,
                    ),
            ),
          ),
        ],
      ],
    );
  }

  /// 头像:都用软色调,不再用饱和填充。
  /// - 用户:主色 12% 底 + 主色图标
  /// - AI  :次级表面底 + 次要文字色图标
  Widget _buildAvatar(BuildContext context, {required bool isUser}) {
    final theme = Theme.of(context);
    final bg = isUser
        ? theme.colorScheme.primary.withValues(alpha: 0.12)
        : theme.colorScheme.surfaceContainerHigh;
    final fg = isUser
        ? theme.colorScheme.primary
        : theme.colorScheme.onSurfaceVariant;

    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(
        // 用 smart_toy_outlined,与「知识增强」chip 的 auto_awesome 区分开
        isUser ? Icons.person_outline : Icons.smart_toy_outlined,
        size: 18,
        color: fg,
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    final theme = Theme.of(context);

    if (message.isLoading) {
      return const LoadingDots();
    }

    if (message.error != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.error_outline, size: 16, color: theme.colorScheme.error),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              message.content.isNotEmpty ? message.content : '处理失败',
              style: TextStyle(color: theme.colorScheme.error),
            ),
          ),
        ],
      );
    }

    // 用户气泡:文字色用主题的 onPrimary,不再硬编码白色
    if (isUser) {
      return Text(
        message.content,
        style: theme.textTheme.bodyMedium?.copyWith(
          color: theme.colorScheme.onPrimary,
        ),
      );
    }

    return MarkdownRenderer(content: message.content);
  }

  bool get _hasEnhancementMetadata {
    final metadata = message.metadata;
    return metadata != null &&
        (metadata.enhancementApplied || metadata.matchedEntries > 0);
  }

  Widget _buildMetadataChip(BuildContext context) {
    final metadata = message.metadata!;
    final label = metadata.matchedEntries > 0
        ? '知识增强(${metadata.matchedEntries} 条)'
        : '知识增强';

    return Chip(
      label: Text(label),
      visualDensity: VisualDensity.compact,
      avatar: const Icon(Icons.auto_awesome_outlined, size: 14),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }
}

import 'package:flutter/material.dart';

import '../../models/message.dart';
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: isUser
          ? MainAxisAlignment.end
          : MainAxisAlignment.start,
      children: [
        if (!isUser) ...[
          _buildAvatar(context, isUser: false),
          const SizedBox(width: 12),
        ],
        Flexible(
          child: Column(
            crossAxisAlignment: isUser
                ? CrossAxisAlignment.end
                : CrossAxisAlignment.start,
            children: [
              _buildHeader(context),
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: isUser
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(12),
                  border: isUser
                      ? null
                      : Border.all(
                          color:
                              Theme.of(context).dividerTheme.color ??
                              Theme.of(context).dividerColor,
                        ),
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
    final canUseTts =
        !isUser &&
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
          Text('AI 助手', style: Theme.of(context).textTheme.labelSmall),
        if (canUseTts) ...[
          const SizedBox(width: 6),
          Tooltip(
            message: ttsPlaying
                ? '停止语音播放'
                : ttsLoading
                ? '正在生成语音，点击停止'
                : '播放语音',
            child: IconButton(
              visualDensity: VisualDensity.compact,
              iconSize: 18,
              onPressed: () {
                if (ttsLoading || ttsPlaying) {
                  onStopTts?.call();
                  return;
                }
                onPlayTts?.call(message.id, message.content);
              },
              icon: ttsLoading
                  ? const SizedBox(
                      width: 16,
                      height: 16,
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

  Widget _buildAvatar(BuildContext context, {required bool isUser}) {
    final theme = Theme.of(context);

    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: isUser ? theme.colorScheme.primary : theme.colorScheme.secondary,
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

    if (isUser) {
      return Text(message.content, style: const TextStyle(color: Colors.white));
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
        ? '知识增强（${metadata.matchedEntries} 条）'
        : '知识增强';

    return Chip(
      label: Text(label),
      visualDensity: VisualDensity.compact,
      avatar: const Icon(Icons.auto_awesome, size: 16),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }
}

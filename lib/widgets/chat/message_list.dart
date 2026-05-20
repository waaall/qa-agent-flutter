import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/constants.dart';
import '../../models/message.dart';
import '../../providers/tts/tts_provider.dart';
import 'message_item.dart';

/// 消息列表。
class MessageList extends ConsumerWidget {
  final List<Message> messages;

  const MessageList({super.key, required this.messages});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ttsNotifier = ref.read(ttsNotifierProvider.notifier);
    ref.watch(ttsNotifierProvider);

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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: MessageItem(
                message: message,
                ttsLoading: ttsNotifier.isLoadingMessage(message.id),
                ttsPlaying: ttsNotifier.isPlayingMessage(message.id),
                onPlayTts: ttsNotifier.playMessage,
                onStopTts: ttsNotifier.stop,
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/utils/logger.dart';
import '../../services/tts_service.dart';
import '../config/backend_config_provider.dart';
import 'tts_state.dart';

/// TTS 服务 Provider。
final ttsServiceProvider = Provider<TTSService>((ref) {
  final config = ref.watch(backendConfigProvider);
  return TTSService(config: config.ttsConfig);
});

/// TTS 播放状态 Provider。
final ttsNotifierProvider = StateNotifierProvider<TTSNotifier, TTSState>((ref) {
  return TTSNotifier(ref);
});

/// TTS 播放控制器。
class TTSNotifier extends StateNotifier<TTSState> {
  final Ref _ref;
  final AudioPlayer _player = AudioPlayer();
  StreamSubscription<void>? _completeSubscription;

  TTSNotifier(this._ref) : super(const TTSState()) {
    _completeSubscription = _player.onPlayerComplete.listen((_) {
      state = const TTSState();
    });
  }

  TTSService get _ttsService => _ref.read(ttsServiceProvider);

  /// 播放指定消息的文本；若当前消息已在播放或生成中，则点击等价于停止。
  Future<void> playMessage(String messageId, String text) async {
    final content = text.trim();
    if (content.isEmpty) return;

    final isSameActive =
        state.activeMessageId == messageId &&
        state.status != TTSPlaybackStatus.idle;
    if (isSameActive) {
      await stop();
      return;
    }

    await stop();
    state = TTSState(
      activeMessageId: messageId,
      status: TTSPlaybackStatus.loading,
    );

    try {
      final bytes = await _ttsService.synthesizeSpeech(content);
      if (state.activeMessageId != messageId) return;

      await _player.play(BytesSource(bytes));
      state = TTSState(
        activeMessageId: messageId,
        status: TTSPlaybackStatus.playing,
      );
    } catch (e, stackTrace) {
      Logger.error('TTS 播放失败', e, stackTrace);
      state = TTSState(
        activeMessageId: messageId,
        status: TTSPlaybackStatus.error,
        error: e.toString(),
      );
    }
  }

  /// 停止当前播放。
  Future<void> stop() async {
    await _player.stop();
    state = const TTSState();
  }

  bool isLoadingMessage(String messageId) =>
      state.activeMessageId == messageId &&
      state.status == TTSPlaybackStatus.loading;

  bool isPlayingMessage(String messageId) =>
      state.activeMessageId == messageId &&
      state.status == TTSPlaybackStatus.playing;

  @override
  void dispose() {
    _completeSubscription?.cancel();
    _player.dispose();
    super.dispose();
  }
}

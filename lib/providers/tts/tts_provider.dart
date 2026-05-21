import 'dart:async';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

import '../../config/app_config.dart';
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
  // 当前正在播放的临时 mp3 文件，播放结束/停止后清理。
  String? _activeTempFilePath;
  int _playbackGeneration = 0;

  TTSNotifier(this._ref) : super(const TTSState());

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
    final generation = ++_playbackGeneration;
    state = TTSState(
      activeMessageId: messageId,
      status: TTSPlaybackStatus.loading,
    );

    try {
      final bytes = await _ttsService.synthesizeSpeech(content);
      if (!_isCurrentPlayback(generation, messageId)) return;

      // 把 mp3 字节落到临时文件再用 DeviceFileSource 播放，
      // 规避 audioplayers BytesSource 在 macOS/桌面端无法识别 mp3 头的问题。
      final tempPath = await _writeTempMp3(messageId, bytes);
      if (!_isCurrentPlayback(generation, messageId)) {
        await _safeDelete(tempPath);
        return;
      }

      _activeTempFilePath = tempPath;
      await _bindCompletionFor(generation);
      await _player.play(
        DeviceFileSource(tempPath, mimeType: AppConfig.ttsMimeType),
      );
      if (!_isCurrentPlayback(generation, messageId)) return;
      state = TTSState(
        activeMessageId: messageId,
        status: TTSPlaybackStatus.playing,
      );
    } catch (e, stackTrace) {
      Logger.error('TTS 播放失败', e, stackTrace);
      _cleanupTempFile();
      if (_isCurrentPlayback(generation, messageId)) {
        state = TTSState(
          activeMessageId: messageId,
          status: TTSPlaybackStatus.error,
          error: e.toString(),
        );
      }
    }
  }

  /// 停止当前播放。
  Future<void> stop() async {
    _playbackGeneration++;
    await _completeSubscription?.cancel();
    _completeSubscription = null;
    await _player.stop();
    _cleanupTempFile();
    state = const TTSState();
  }

  /// 只让当前播放任务响应完成事件，避免上一次 stop/complete 的异步事件误清理新音频。
  Future<void> _bindCompletionFor(int generation) async {
    await _completeSubscription?.cancel();
    _completeSubscription = _player.onPlayerComplete.listen((_) {
      if (_playbackGeneration != generation) return;
      _cleanupTempFile();
      state = const TTSState();
    });
  }

  bool _isCurrentPlayback(int generation, String messageId) {
    return _playbackGeneration == generation &&
        state.activeMessageId == messageId;
  }

  /// 将 mp3 字节写入临时目录，文件名带消息 id 与时间戳避免冲突。
  Future<String> _writeTempMp3(String messageId, List<int> bytes) async {
    final dir = await getTemporaryDirectory();
    final safeId = messageId.replaceAll(RegExp(r'[^A-Za-z0-9_-]'), '_');
    final filename =
        'tts_${safeId}_${DateTime.now().millisecondsSinceEpoch}.mp3';
    final file = File('${dir.path}/$filename');
    await file.writeAsBytes(bytes, flush: true);
    return file.path;
  }

  /// 清理当前活动的临时文件。
  void _cleanupTempFile() {
    final path = _activeTempFilePath;
    _activeTempFilePath = null;
    if (path == null) return;
    unawaited(_safeDelete(path));
  }

  Future<void> _safeDelete(String path) async {
    try {
      final file = File(path);
      if (await file.exists()) {
        await file.delete();
      }
    } catch (e) {
      Logger.warn('清理 TTS 临时文件失败', e);
    }
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
    _cleanupTempFile();
    _player.dispose();
    super.dispose();
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tts_state.freezed.dart';

/// TTS 播放状态。
enum TTSPlaybackStatus { idle, loading, playing, error }

/// TTS 状态。
@freezed
class TTSState with _$TTSState {
  const factory TTSState({
    String? activeMessageId,
    @Default(TTSPlaybackStatus.idle) TTSPlaybackStatus status,
    String? error,
  }) = _TTSState;
}

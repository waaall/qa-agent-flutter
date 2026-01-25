import 'package:freezed_annotation/freezed_annotation.dart';

part 'stt_state.freezed.dart';

/// 录音状态枚举
enum RecorderState {
  idle,        // 空闲
  recording,   // 录音中
  processing,  // 处理中（停止录音后）
  transcribing, // 转写中
  success,     // 成功
  error,       // 错误
}

/// STT 状态
@freezed
class STTState with _$STTState {
  const factory STTState({
    // 录音状态
    @Default(RecorderState.idle) RecorderState state,
    // 转写结果文本
    @Default('') String text,
    // 错误信息
    String? error,
    // 录音时长（毫秒）
    @Default(0) int duration,
  }) = _STTState;
}

import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';

import '../../core/utils/logger.dart';
import '../../services/stt_service.dart';
import '../config/backend_config_provider.dart';
import 'stt_state.dart';

/// STT 服务 Provider
final sttServiceProvider = Provider<STTService>((ref) {
  final config = ref.watch(backendConfigProvider);
  return STTService(config: config.sttConfig);
});

/// STT 状态 Provider
final sttNotifierProvider = StateNotifierProvider<STTNotifier, STTState>((ref) {
  return STTNotifier(ref);
});

/// STT 状态管理
class STTNotifier extends StateNotifier<STTState> {
  final Ref _ref;
  final AudioRecorder _recorder = AudioRecorder();
  Timer? _durationTimer;
  Timer? _autoStopTimer;
  String? _tempFilePath;

  STTNotifier(this._ref) : super(const STTState());

  STTService get _sttService => _ref.read(sttServiceProvider);

  /// 开始录音
  Future<void> startRecording() async {
    try {
      // 检查权限
      if (!await _recorder.hasPermission()) {
        state = state.copyWith(
          state: RecorderState.error,
          error: '需要麦克风权限',
        );
        return;
      }

      // 获取临时文件路径
      final tempDir = await getTemporaryDirectory();
      _tempFilePath = '${tempDir.path}/stt_recording_${DateTime.now().millisecondsSinceEpoch}.wav';

      // 开始录音
      await _recorder.start(
        const RecordConfig(
          encoder: AudioEncoder.wav,
          sampleRate: 16000,
          numChannels: 1,
          bitRate: 256000,
        ),
        path: _tempFilePath!,
      );

      state = state.copyWith(
        state: RecorderState.recording,
        duration: 0,
        error: null,
        text: '',
      );

      // 启动计时器
      _startDurationTimer();
      _startAutoStopTimer();

      Logger.debug('开始录音: $_tempFilePath');
    } catch (e) {
      Logger.error('开始录音失败', e);
      state = state.copyWith(
        state: RecorderState.error,
        error: '录音启动失败: $e',
      );
    }
  }

  /// 停止录音并转写
  Future<void> stopAndTranscribe() async {
    _stopTimers();

    if (state.state != RecorderState.recording) return;

    try {
      state = state.copyWith(state: RecorderState.processing);

      // 停止录音
      final path = await _recorder.stop();
      if (path == null || _tempFilePath == null) {
        throw Exception('录音文件不存在');
      }

      Logger.debug('录音完成: $path');

      // 读取音频文件
      final audioFile = File(_tempFilePath!);
      if (!await audioFile.exists()) {
        throw Exception('录音文件读取失败');
      }

      final wavData = await audioFile.readAsBytes();
      Logger.debug('音频大小: ${wavData.length} bytes');

      // 检查文件大小
      if (wavData.length > _sttService.maxSizeBytes) {
        throw Exception('录音时间过长，请缩短录音');
      }

      // 转写
      state = state.copyWith(state: RecorderState.transcribing);
      final result = await _sttService.transcribe(wavData: Uint8List.fromList(wavData));

      // 更新状态
      state = state.copyWith(
        state: RecorderState.success,
        text: result.text,
      );

      // 清理临时文件
      await audioFile.delete();
      _tempFilePath = null;

    } catch (e) {
      Logger.error('转写失败', e);
      state = state.copyWith(
        state: RecorderState.error,
        error: e.toString(),
      );
    }
  }

  /// 取消录音
  Future<void> cancelRecording() async {
    _stopTimers();

    try {
      await _recorder.stop();

      // 删除临时文件
      if (_tempFilePath != null) {
        final file = File(_tempFilePath!);
        if (await file.exists()) {
          await file.delete();
        }
        _tempFilePath = null;
      }
    } catch (e) {
      Logger.warn('取消录音时出错', e);
    }

    state = const STTState();
  }

  /// 重试转写
  Future<void> retryTranscribe() async {
    if (_tempFilePath == null) {
      state = state.copyWith(
        state: RecorderState.error,
        error: '没有可重试的录音',
      );
      return;
    }

    try {
      state = state.copyWith(state: RecorderState.transcribing, error: null);

      final audioFile = File(_tempFilePath!);
      if (!await audioFile.exists()) {
        throw Exception('录音文件不存在');
      }

      final wavData = await audioFile.readAsBytes();
      final result = await _sttService.transcribe(wavData: Uint8List.fromList(wavData));

      state = state.copyWith(
        state: RecorderState.success,
        text: result.text,
      );

      // 清理
      await audioFile.delete();
      _tempFilePath = null;

    } catch (e) {
      state = state.copyWith(
        state: RecorderState.error,
        error: e.toString(),
      );
    }
  }

  /// 重置状态
  void reset() {
    _stopTimers();
    state = const STTState();
  }

  /// 启动时长计时器
  void _startDurationTimer() {
    _durationTimer = Timer.periodic(const Duration(milliseconds: 100), (_) {
      state = state.copyWith(duration: state.duration + 100);
    });
  }

  /// 启动自动停止计时器
  void _startAutoStopTimer() {
    final maxDuration = _sttService.maxDurationMs;
    _autoStopTimer = Timer(Duration(milliseconds: maxDuration), () {
      if (state.state == RecorderState.recording) {
        stopAndTranscribe();
      }
    });
  }

  /// 停止计时器
  void _stopTimers() {
    _durationTimer?.cancel();
    _durationTimer = null;
    _autoStopTimer?.cancel();
    _autoStopTimer = null;
  }

  @override
  void dispose() {
    _stopTimers();
    _recorder.dispose();
    super.dispose();
  }
}

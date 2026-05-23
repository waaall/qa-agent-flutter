import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/stt/stt_provider.dart';
import '../../providers/stt/stt_state.dart';
import '../../theme/app_theme.dart';

/// 语音录制按钮
class AudioRecorderButton extends ConsumerWidget {
  final void Function(String text) onTranscribed;

  const AudioRecorderButton({
    super.key,
    required this.onTranscribed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sttState = ref.watch(sttNotifierProvider);
    final theme = Theme.of(context);

    // 成功后自动调用回调
    ref.listen<STTState>(sttNotifierProvider, (previous, next) {
      if (next.state == RecorderState.success && next.text.isNotEmpty) {
        onTranscribed(next.text);
        // 重置状态
        Future.microtask(() {
          ref.read(sttNotifierProvider.notifier).reset();
        });
      }
    });

    return _buildButton(context, ref, sttState, theme);
  }

  Widget _buildButton(
    BuildContext context,
    WidgetRef ref,
    STTState sttState,
    ThemeData theme,
  ) {
    final sttNotifier = ref.read(sttNotifierProvider.notifier);

    switch (sttState.state) {
      case RecorderState.idle:
        return IconButton(
          icon: const Icon(Icons.mic_outlined),
          onPressed: () => sttNotifier.startRecording(),
          tooltip: '语音输入',
        );

      case RecorderState.recording:
        return _RecordingButton(
          duration: sttState.duration,
          onStop: () => sttNotifier.stopAndTranscribe(),
          onCancel: () => sttNotifier.cancelRecording(),
        );

      case RecorderState.processing:
      case RecorderState.transcribing:
        return const SizedBox(
          width: 48,
          height: 48,
          child: Center(
            child: SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          ),
        );

      case RecorderState.error:
        return IconButton(
          icon: Icon(
            Icons.error_outline,
            color: theme.colorScheme.error,
          ),
          onPressed: () {
            // 显示错误并提供重试
            _showErrorDialog(context, ref, sttState.error);
          },
          tooltip: '录音失败',
        );

      case RecorderState.success:
        // 这个状态会很快被重置;成功色走主题语义色,不再硬编码
        return Icon(Icons.check_rounded, color: AppTheme.success(context));
    }
  }

  void _showErrorDialog(BuildContext context, WidgetRef ref, String? error) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('语音识别失败'),
        content: Text(error ?? '未知错误'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              ref.read(sttNotifierProvider.notifier).reset();
            },
            child: const Text('取消'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              ref.read(sttNotifierProvider.notifier).retryTranscribe();
            },
            child: const Text('重试'),
          ),
        ],
      ),
    );
  }
}

/// 录音中按钮
class _RecordingButton extends StatelessWidget {
  final int duration;
  final VoidCallback onStop;
  final VoidCallback onCancel;

  const _RecordingButton({
    required this.duration,
    required this.onStop,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final seconds = duration ~/ 1000;
    final minutes = seconds ~/ 60;
    final remainingSeconds = seconds % 60;
    final timeStr = '$minutes:${remainingSeconds.toString().padLeft(2, '0')}';

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // 取消按钮
        IconButton(
          icon: const Icon(Icons.close),
          onPressed: onCancel,
          tooltip: '取消',
        ),
        // 录音指示器
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: theme.colorScheme.error.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: theme.colorScheme.error.withValues(alpha: 0.3),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // 闪烁的红点
              _PulsingDot(color: theme.colorScheme.error),
              const SizedBox(width: 8),
              Text(
                timeStr,
                style: TextStyle(
                  color: theme.colorScheme.error,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        // 停止按钮
        IconButton(
          icon: Icon(Icons.stop, color: theme.colorScheme.error),
          onPressed: onStop,
          tooltip: '停止录音',
        ),
      ],
    );
  }
}

/// 闪烁的红点
class _PulsingDot extends StatefulWidget {
  final Color color;

  const _PulsingDot({required this.color});

  @override
  State<_PulsingDot> createState() => _PulsingDotState();
}

class _PulsingDotState extends State<_PulsingDot>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 0.3, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: widget.color.withValues(alpha: _animation.value),
            shape: BoxShape.circle,
          ),
        );
      },
    );
  }
}

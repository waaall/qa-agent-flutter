import 'package:flutter/material.dart';

/// 加载动画（三个跳动的点）
class LoadingDots extends StatefulWidget {
  final Color? color;
  final double size;

  const LoadingDots({
    super.key,
    this.color,
    this.size = 8,
  });

  @override
  State<LoadingDots> createState() => _LoadingDotsState();
}

class _LoadingDotsState extends State<LoadingDots>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final color = widget.color ??
        Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(3, (index) {
        return AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            // 计算每个点的动画偏移
            final delay = index * 0.2;
            final progress = (_controller.value - delay) % 1.0;
            final bounce = _calculateBounce(progress);

            return Transform.translate(
              offset: Offset(0, -bounce * widget.size / 2),
              child: child,
            );
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: widget.size / 4),
            width: widget.size,
            height: widget.size,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
        );
      }),
    );
  }

  double _calculateBounce(double progress) {
    // 只在 0-0.5 的范围内弹跳
    if (progress < 0 || progress > 0.5) return 0;
    // 使用正弦函数创建平滑的弹跳效果
    return (1 - (progress * 2 - 1).abs()) * 0.8;
  }
}

import 'package:flutter/material.dart';

import '../../config/constants.dart';

/// 响应式构建器
class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(BuildContext context, ScreenType screenType) builder;

  const ResponsiveBuilder({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenType = getScreenType(constraints.maxWidth);
        return builder(context, screenType);
      },
    );
  }
}

/// 响应式显示/隐藏组件
class ResponsiveVisibility extends StatelessWidget {
  final Widget child;
  final bool visibleOnMobile;
  final bool visibleOnTablet;
  final bool visibleOnDesktop;
  final Widget? replacement;

  const ResponsiveVisibility({
    super.key,
    required this.child,
    this.visibleOnMobile = true,
    this.visibleOnTablet = true,
    this.visibleOnDesktop = true,
    this.replacement,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, screenType) {
        final isVisible = switch (screenType) {
          ScreenType.mobile => visibleOnMobile,
          ScreenType.tablet => visibleOnTablet,
          ScreenType.desktop => visibleOnDesktop,
        };

        if (isVisible) return child;
        return replacement ?? const SizedBox.shrink();
      },
    );
  }
}

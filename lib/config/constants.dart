import 'package:flutter/material.dart';

/// UI 常量
class UIConstants {
  // 响应式断点
  static const double mobileBreakpoint = 768;
  static const double tabletBreakpoint = 992;

  // 侧边栏宽度
  static const double sidebarWidth = 280;
  static const double sidebarCollapsedWidth = 64;

  // 消息列表
  static const double maxMessageWidth = 800;
  static const double messageAvatarSize = 32;

  // 输入框
  static const double inputBoxMaxHeight = 200;
  static const double inputBoxMinHeight = 56;

  // 动画时长
  static const Duration animationDuration = Duration(milliseconds: 200);
  static const Duration toastDuration = Duration(seconds: 3);

  // 圆角
  static const double borderRadiusSmall = 4;
  static const double borderRadiusMedium = 8;
  static const double borderRadiusLarge = 12;

  // 间距
  static const double spacingXs = 4;
  static const double spacingSm = 8;
  static const double spacingMd = 16;
  static const double spacingLg = 24;
  static const double spacingXl = 32;
}

/// 屏幕类型
enum ScreenType { mobile, tablet, desktop }

/// 根据宽度获取屏幕类型
ScreenType getScreenType(double width) {
  if (width < UIConstants.mobileBreakpoint) return ScreenType.mobile;
  if (width < UIConstants.tabletBreakpoint) return ScreenType.tablet;
  return ScreenType.desktop;
}

/// 扩展 BuildContext 获取屏幕类型
extension ScreenTypeExtension on BuildContext {
  ScreenType get screenType => getScreenType(MediaQuery.of(this).size.width);
  bool get isMobile => screenType == ScreenType.mobile;
  bool get isTablet => screenType == ScreenType.tablet;
  bool get isDesktop => screenType == ScreenType.desktop;
}

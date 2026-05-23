import 'package:flutter/material.dart';

/// 应用主题。
///
/// 设计原则:
/// - 中性优先,真中性灰,不偏蓝
/// - 单一低饱和强调色(石板蓝)用于按钮、用户气泡、选中态、链接
/// - 发丝级边框 + 克制留白替代厚重边框
/// - 统一圆角:交互控件 8、容器/卡片 12
/// - 语义色全部降饱和
class AppTheme {
  AppTheme._();

  // ─────────── 强调色:石板蓝 ───────────
  static const Color _accentLight = Color(0xFF4C6178);
  static const Color _accentDark = Color(0xFF93A7BF);

  // 浅色:强调色容器(选中态浅底)
  static const Color _accentContainerLight = Color(0xFFE4E9F0);
  static const Color _onAccentContainerLight = Color(0xFF263241);
  static const Color _accentContainerDark = Color(0xFF334353);
  static const Color _onAccentContainerDark = Color(0xFFD9E2EE);

  // ─────────── 中性色(浅色) ───────────
  static const Color _bgLight = Color(0xFFF6F6F7); // scaffold / 侧边栏
  static const Color _surfaceLight = Color(0xFFFFFFFF); // 头部 / 输入条 / 气泡
  static const Color _surfaceContainerLowLight = Color(0xFFFAFAFB);
  static const Color _surfaceContainerLight = Color(0xFFF1F1F3); // 次级填充
  static const Color _surfaceContainerHighLight = Color(0xFFE9E9EC);
  static const Color _outlineLight = Color(0xFFD9D9DD); // 主分隔
  static const Color _outlineVariantLight = Color(0xFFEDEDF0); // 发丝
  static const Color _onSurfaceLight = Color(0xFF1F1F22);
  static const Color _onSurfaceVariantLight = Color(0xFF6B6B72);

  // ─────────── 中性色(深色) ───────────
  static const Color _bgDark = Color(0xFF18181A);
  static const Color _surfaceDark = Color(0xFF222326);
  static const Color _surfaceContainerLowDark = Color(0xFF1C1C1F);
  static const Color _surfaceContainerDark = Color(0xFF2A2B2E);
  static const Color _surfaceContainerHighDark = Color(0xFF323337);
  static const Color _outlineDark = Color(0xFF3A3B3F);
  static const Color _outlineVariantDark = Color(0xFF2C2D31);
  static const Color _onSurfaceDark = Color(0xFFE7E7E9);
  static const Color _onSurfaceVariantDark = Color(0xFF9C9CA3);

  // ─────────── 语义色(降饱和) ───────────
  static const Color _successLight = Color(0xFF5A8264);
  static const Color _successDark = Color(0xFF7FA98B);
  static const Color _warningLight = Color(0xFF9C7B3F);
  static const Color _warningDark = Color(0xFFC3A35E);
  static const Color _errorLight = Color(0xFFBF5450);
  static const Color _errorDark = Color(0xFFD58783);

  /// 根据当前主题取语义色 success
  static Color success(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? _successDark
          : _successLight;

  /// 根据当前主题取语义色 warning
  static Color warning(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? _warningDark
          : _warningLight;

  // ─────────── 圆角 ───────────
  static const double radiusInteractive = 8; // 按钮/输入/Chip
  static const double radiusCard = 12; // 卡片/气泡/Dialog

  // ─────────── 主题构建 ───────────
  static ThemeData get light => _build(brightness: Brightness.light);
  static ThemeData get dark => _build(brightness: Brightness.dark);

  static ThemeData _build({required Brightness brightness}) {
    final isDark = brightness == Brightness.dark;

    // 解析当前模式的色板
    final accent = isDark ? _accentDark : _accentLight;
    final onAccent = isDark ? const Color(0xFF15202C) : Colors.white;
    final accentContainer =
        isDark ? _accentContainerDark : _accentContainerLight;
    final onAccentContainer =
        isDark ? _onAccentContainerDark : _onAccentContainerLight;
    final bg = isDark ? _bgDark : _bgLight;
    final surface = isDark ? _surfaceDark : _surfaceLight;
    final surfaceContainerLow =
        isDark ? _surfaceContainerLowDark : _surfaceContainerLowLight;
    final surfaceContainer =
        isDark ? _surfaceContainerDark : _surfaceContainerLight;
    final surfaceContainerHigh =
        isDark ? _surfaceContainerHighDark : _surfaceContainerHighLight;
    final outline = isDark ? _outlineDark : _outlineLight;
    final outlineVariant =
        isDark ? _outlineVariantDark : _outlineVariantLight;
    final onSurface = isDark ? _onSurfaceDark : _onSurfaceLight;
    final onSurfaceVariant =
        isDark ? _onSurfaceVariantDark : _onSurfaceVariantLight;
    final error = isDark ? _errorDark : _errorLight;

    final colorScheme = ColorScheme(
      brightness: brightness,
      primary: accent,
      onPrimary: onAccent,
      primaryContainer: accentContainer,
      onPrimaryContainer: onAccentContainer,
      // secondary 复用 accent,避免出现第二种主色;AI 头像在 widget 内单独处理
      secondary: accent,
      onSecondary: onAccent,
      secondaryContainer: accentContainer,
      onSecondaryContainer: onAccentContainer,
      surface: surface,
      onSurface: onSurface,
      onSurfaceVariant: onSurfaceVariant,
      surfaceContainerLowest: isDark ? const Color(0xFF131315) : Colors.white,
      surfaceContainerLow: surfaceContainerLow,
      surfaceContainer: surfaceContainer,
      surfaceContainerHigh: surfaceContainerHigh,
      surfaceContainerHighest:
          isDark ? const Color(0xFF3A3B3F) : const Color(0xFFE0E0E4),
      outline: outline,
      outlineVariant: outlineVariant,
      error: error,
      onError: isDark ? const Color(0xFF2C1413) : Colors.white,
    );

    // 排版:略紧字间距 + 舒适行高 + 拉开标题字重
    final baseTextTheme =
        (isDark ? Typography.whiteHelsinki : Typography.blackHelsinki).copyWith(
      bodyLarge: const TextStyle(fontSize: 15, height: 1.5, letterSpacing: 0),
      bodyMedium: const TextStyle(fontSize: 14, height: 1.5, letterSpacing: 0),
      bodySmall: const TextStyle(fontSize: 12.5, height: 1.45, letterSpacing: 0),
      titleLarge: const TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.3,
        height: 1.3,
      ),
      titleMedium: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.1,
        height: 1.35,
      ),
      titleSmall: const TextStyle(
        fontSize: 13.5,
        fontWeight: FontWeight.w600,
        letterSpacing: 0,
        height: 1.35,
      ),
      labelLarge: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
      ),
      labelMedium: const TextStyle(
        fontSize: 12.5,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
      ),
      labelSmall: const TextStyle(
        fontSize: 11.5,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      ),
      headlineSmall: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.4,
        height: 1.3,
      ),
      headlineMedium: const TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.5,
        height: 1.25,
      ),
    );

    final textTheme = baseTextTheme.apply(
      bodyColor: onSurface,
      displayColor: onSurface,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: bg,
      canvasColor: bg,
      dividerColor: outlineVariant,
      textTheme: textTheme,
      splashFactory: InkRipple.splashFactory,
      // 全局禁用 Material 默认的 surfaceTint(避免滚动时表面被强调色染上)
      cardTheme: CardThemeData(
        color: surface,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusCard),
          side: BorderSide(color: outlineVariant),
        ),
      ),

      appBarTheme: AppBarTheme(
        backgroundColor: surface,
        foregroundColor: onSurface,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        titleTextStyle: textTheme.titleMedium,
        iconTheme: IconThemeData(color: onSurfaceVariant, size: 22),
      ),

      dividerTheme: DividerThemeData(
        color: outlineVariant,
        thickness: 1,
        space: 1,
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surfaceContainer,
        hintStyle: TextStyle(color: onSurfaceVariant.withValues(alpha: 0.7)),
        labelStyle: TextStyle(color: onSurfaceVariant),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusInteractive),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusInteractive),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusInteractive),
          borderSide: BorderSide(color: accent, width: 1.5),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: accent,
          foregroundColor: onAccent,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          minimumSize: const Size(0, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusInteractive),
          ),
          textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        ),
      ),

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: accent,
          foregroundColor: onAccent,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          minimumSize: const Size(0, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusInteractive),
          ),
          textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: onSurface,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          minimumSize: const Size(0, 40),
          side: BorderSide(color: outline),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusInteractive),
          ),
          textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: accent,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusInteractive),
          ),
          textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        ),
      ),

      chipTheme: ChipThemeData(
        backgroundColor: surfaceContainer,
        side: BorderSide(color: outlineVariant),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusInteractive),
        ),
        labelStyle: textTheme.labelSmall?.copyWith(color: onSurfaceVariant),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        iconTheme: IconThemeData(color: onSurfaceVariant, size: 14),
      ),

      dialogTheme: DialogThemeData(
        backgroundColor: surface,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusCard),
          side: BorderSide(color: outlineVariant),
        ),
        titleTextStyle: textTheme.titleLarge,
        contentTextStyle: textTheme.bodyMedium,
      ),

      snackBarTheme: SnackBarThemeData(
        backgroundColor:
            isDark ? surfaceContainerHigh : const Color(0xFF2A2A2D),
        contentTextStyle: TextStyle(
          color: isDark ? onSurface : Colors.white,
          fontSize: 14,
        ),
        behavior: SnackBarBehavior.floating,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusInteractive),
        ),
      ),

      tabBarTheme: TabBarThemeData(
        labelColor: accent,
        unselectedLabelColor: onSurfaceVariant,
        indicatorColor: accent,
        dividerColor: outlineVariant,
        labelStyle:
            const TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
        unselectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
        indicatorSize: TabBarIndicatorSize.label,
      ),

      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: accent,
        linearTrackColor: surfaceContainerHigh,
        circularTrackColor: surfaceContainerHigh,
      ),

      listTileTheme: ListTileThemeData(
        iconColor: onSurfaceVariant,
        textColor: onSurface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusInteractive),
        ),
      ),

      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: isDark ? surfaceContainerHigh : const Color(0xFF2A2A2D),
          borderRadius: BorderRadius.circular(radiusInteractive / 2),
        ),
        textStyle: TextStyle(
          color: isDark ? onSurface : Colors.white,
          fontSize: 12,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      ),

      scrollbarTheme: ScrollbarThemeData(
        thumbColor: WidgetStateProperty.all(
          onSurface.withValues(alpha: 0.18),
        ),
        thickness: WidgetStateProperty.all(6),
        radius: const Radius.circular(3),
        crossAxisMargin: 2,
      ),
    );
  }
}

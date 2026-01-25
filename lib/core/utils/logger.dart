import 'package:flutter/foundation.dart';

/// 日志级别
enum LogLevel { debug, info, warn, error }

/// 日志工具类
class Logger {
  static LogLevel _level = kDebugMode ? LogLevel.debug : LogLevel.error;

  /// 设置日志级别
  static void setLevel(LogLevel level) {
    _level = level;
  }

  /// Debug 日志
  static void debug(String message, [Object? data]) {
    if (_level.index <= LogLevel.debug.index) {
      _log('DEBUG', message, data);
    }
  }

  /// Info 日志
  static void info(String message, [Object? data]) {
    if (_level.index <= LogLevel.info.index) {
      _log('INFO', message, data);
    }
  }

  /// Warning 日志
  static void warn(String message, [Object? data]) {
    if (_level.index <= LogLevel.warn.index) {
      _log('WARN', message, data);
    }
  }

  /// Error 日志
  static void error(String message, [Object? error, StackTrace? stackTrace]) {
    if (_level.index <= LogLevel.error.index) {
      _log('ERROR', message, error);
      if (stackTrace != null && kDebugMode) {
        debugPrint(stackTrace.toString());
      }
    }
  }

  static void _log(String level, String message, Object? data) {
    final timestamp = DateTime.now().toIso8601String();
    final prefix = '[$timestamp][$level]';

    if (data != null) {
      debugPrint('$prefix $message: $data');
    } else {
      debugPrint('$prefix $message');
    }
  }
}

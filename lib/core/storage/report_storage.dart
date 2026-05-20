import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

import '../../config/app_config.dart';
import '../../models/report.dart';
import '../utils/logger.dart';

/// 报告概要本地存储。
///
/// 后端当前没有 report list 接口，因此客户端只保存列表所需的概要信息。
class ReportStorage {
  static const String _boxName = 'reports';
  static Box<String>? _box;

  /// 初始化 Hive box。
  static Future<void> init() async {
    _box = await Hive.openBox<String>(_boxName);
  }

  static Box<String> get _instance {
    if (_box == null) {
      throw StateError('ReportStorage 未初始化，请先调用 ReportStorage.init()');
    }
    return _box!;
  }

  /// 保存报告概要列表。
  static Future<void> saveReports(List<ReportSummary> reports) async {
    try {
      final jsonList = reports.map((report) => report.toJson()).toList();
      await _instance.put(AppConfig.reportStorageKey, jsonEncode(jsonList));
    } catch (e) {
      Logger.error('保存报告列表失败', e);
    }
  }

  /// 加载报告概要列表。
  static List<ReportSummary> loadReports() {
    try {
      final json = _instance.get(AppConfig.reportStorageKey);
      if (json == null) return [];

      final list = jsonDecode(json) as List<dynamic>;
      return list
          .map((item) => ReportSummary.fromJson(item as Map<String, dynamic>))
          .toList()
        ..sort((a, b) => b.lastAccessed.compareTo(a.lastAccessed));
    } catch (e) {
      Logger.error('加载报告列表失败', e);
      return [];
    }
  }
}

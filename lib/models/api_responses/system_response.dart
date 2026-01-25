import 'package:freezed_annotation/freezed_annotation.dart';

part 'system_response.freezed.dart';
part 'system_response.g.dart';

/// 健康检查响应
@freezed
class HealthResponse with _$HealthResponse {
  const factory HealthResponse({
    required String status,
    String? version,
  }) = _HealthResponse;

  factory HealthResponse.fromJson(Map<String, dynamic> json) =>
      _$HealthResponseFromJson(json);
}

/// 系统统计响应
@freezed
class StatsResponse with _$StatsResponse {
  const factory StatsResponse({
    int? totalDocuments,
    int? totalChunks,
    int? totalVectors,
    String? lastUpdated,
  }) = _StatsResponse;

  factory StatsResponse.fromJson(Map<String, dynamic> json) =>
      _$StatsResponseFromJson(json);
}

/// 数据库信息响应
@freezed
class DatabaseInfoResponse with _$DatabaseInfoResponse {
  const factory DatabaseInfoResponse({
    String? dbName,
    String? dbSource,
    List<TableInfo>? tables,
    String? connectionStatus,
  }) = _DatabaseInfoResponse;

  factory DatabaseInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$DatabaseInfoResponseFromJson(json);
}

/// 表信息
@freezed
class TableInfo with _$TableInfo {
  const factory TableInfo({
    required String name,
    int? rowCount,
    List<ColumnInfo>? columns,
  }) = _TableInfo;

  factory TableInfo.fromJson(Map<String, dynamic> json) =>
      _$TableInfoFromJson(json);
}

/// 列信息
@freezed
class ColumnInfo with _$ColumnInfo {
  const factory ColumnInfo({
    required String name,
    required String type,
    bool? nullable,
  }) = _ColumnInfo;

  factory ColumnInfo.fromJson(Map<String, dynamic> json) =>
      _$ColumnInfoFromJson(json);
}

/// STT 转写结果
@freezed
class TranscribeResult with _$TranscribeResult {
  const factory TranscribeResult({
    // 转写文本
    required String text,
    // 语言
    String? language,
    // 置信度
    double? confidence,
    // 时长（秒）
    double? duration,
  }) = _TranscribeResult;

  factory TranscribeResult.fromJson(Map<String, dynamic> json) =>
      _$TranscribeResultFromJson(json);
}

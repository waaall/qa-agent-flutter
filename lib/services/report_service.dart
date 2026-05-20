import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';

import '../config/app_config.dart';
import '../config/endpoints.dart';
import '../core/network/api_client.dart';
import '../models/report.dart';

/// 报告服务。
class ReportService {
  final ApiClient _client;

  ReportService(this._client);

  /// 逐段编码 artifact 名称，允许 evidence/xxx.json 这类子路径。
  String _encodeArtifactName(String name) {
    return name.split('/').map(Uri.encodeComponent).join('/');
  }

  /// 创建报告任务。
  Future<ReportCreatedResponse> create(CreateReportRequest request) async {
    final response = await _client.post<Map<String, dynamic>>(
      Endpoints.reports,
      data: request.toJson(),
    );
    return ReportCreatedResponse.fromJson(response);
  }

  /// 查询报告状态。
  Future<ReportStatusResponse> getStatus(String reportId) async {
    final response = await _client.get<Map<String, dynamic>>(
      Endpoints.reportDetail(reportId),
    );
    return ReportStatusResponse.fromJson(response);
  }

  /// 读取 artifact 原始内容。
  Future<dynamic> getArtifact(String reportId, String artifactName) async {
    final encodedName = _encodeArtifactName(artifactName);
    final isJson = artifactName.toLowerCase().endsWith('.json');
    return _client.get<dynamic>(
      Endpoints.reportArtifact(reportId, encodedName),
      options: Options(
        responseType: isJson ? ResponseType.json : ResponseType.plain,
      ),
    );
  }

  /// 读取 artifact 并转成适合展示/下载的文本。
  Future<String> getArtifactText(String reportId, String artifactName) async {
    final raw = await getArtifact(reportId, artifactName);
    if (artifactName.toLowerCase().endsWith('.json')) {
      return const JsonEncoder.withIndent('  ').convert(raw);
    }
    return raw is String ? raw : raw.toString();
  }

  /// 重试失败或已取消报告。
  Future<void> retry(String reportId) async {
    await _client.post<dynamic>(Endpoints.retryReport(reportId));
  }

  /// 取消报告。
  Future<void> cancel(String reportId) async {
    await _client.post<dynamic>(Endpoints.cancelReport(reportId));
  }

  /// 轮询报告状态直至终态。
  Stream<ReportStatusResponse> pollStatus(
    String reportId, {
    Duration interval = const Duration(
      milliseconds: AppConfig.reportPollingInterval,
    ),
  }) async* {
    while (true) {
      final status = await getStatus(reportId);
      yield status;

      if (status.status.isTerminal) break;
      await Future.delayed(interval);
    }
  }
}

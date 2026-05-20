/// 当前后端 API 端点常量。
///
/// 仅保留新版 agent 后端正在使用的接口；旧上传、文档管理、数据库信息入口不再保留。
class Endpoints {
  // 健康检查。
  static const String health = '/health';

  // 聊天相关。
  static const String chat = '/api/chat';
  static String chatHistory(String sessionId) => '/api/chat/$sessionId/history';
  static String deleteSession(String sessionId) =>
      '/api/chat/$sessionId/history';

  // 知识索引更新。
  static const String updateIndex = '/api/update_index';
  static String updateStatus(String taskId) =>
      '/api/update_index/status/$taskId';

  // 系统信息。
  static const String stats = '/api/stats';

  // 报告相关。
  static const String reports = '/api/reports';
  static String reportDetail(String reportId) => '/api/reports/$reportId';
  static String reportArtifact(String reportId, String artifactName) =>
      '/api/reports/$reportId/artifacts/$artifactName';
  static String retryReport(String reportId) => '/api/reports/$reportId/retry';
  static String cancelReport(String reportId) =>
      '/api/reports/$reportId/cancel';
}

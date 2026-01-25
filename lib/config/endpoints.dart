/// API 端点常量
class Endpoints {
  // 健康检查
  static const String health = '/health';

  // 聊天相关
  static const String chat = '/api/chat';
  static String chatHistory(String sessionId) => '/api/chat/$sessionId/history';
  static String deleteSession(String sessionId) => '/api/chat/$sessionId/history';

  // 文档相关
  static const String upload = '/api/upload';
  static const String documents = '/api/documents';
  static String uploadStatus(String taskId) => '/api/upload/status/$taskId';

  // 向量库更新
  static const String updateIndex = '/api/update_index';
  static String updateStatus(String taskId) => '/api/update_index/status/$taskId';

  // 系统信息
  static const String stats = '/api/stats';

  // 数据库信息
  static const String databaseInfo = '/api/database/info';

  // STT 语音转文字
  static const String sttAsr = '/asr';
}

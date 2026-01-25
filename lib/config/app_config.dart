/// 应用配置
class AppConfig {
  // 默认后端 API 地址
  static const String defaultApiBaseUrl = 'http://localhost:5000';

  // 默认 STT 服务地址
  static const String defaultSttBaseUrl = 'http://192.168.50.50:9000';

  // API 超时配置（毫秒）
  static const int connectTimeout = 30000;
  static const int receiveTimeout = 300000; // 5分钟，用于长轮询
  static const int sendTimeout = 300000;

  // 文件上传大小限制
  static const int maxUploadSize = 50 * 1024 * 1024; // 50MB

  // 消息输入长度限制
  static const int maxMessageLength = 10000;

  // 轮询间隔
  static const int pollingInterval = 2000; // 2秒

  // 录音配置
  static const int maxRecordDuration = 60000; // 60秒
  static const int maxAudioSize = 10 * 1024 * 1024; // 10MB

  // 本地存储键
  static const String sessionStorageKey = 'qa_agent_sessions';
  static const String configStorageKey = 'qa_agent_config';
  static const String themeStorageKey = 'qa_agent_theme';
  static const String taskStorageKey = 'qa_agent_tasks';
}

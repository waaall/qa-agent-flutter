/// 应用配置
class AppConfig {
  // 默认 Agent 后端地址；实际使用时可在设置页覆盖。
  static const String defaultAgentBaseUrl = 'http://192.168.50.198:5000';

  // 默认 STT 服务地址。
  static const String defaultSttBaseUrl = 'http://192.168.50.198:9000';

  // 默认 TTS 服务地址；可填写根地址，运行时会自动补齐 speech endpoint。
  static const String defaultTtsBaseUrl = 'http://192.168.50.198:8880';

  // 默认 TTS 声音；当前首版只提供一个默认值，但配置模型预留扩展。
  static const String defaultTtsVoice = 'zf_094';

  // TTS 输出格式固定为 mp3。
  static const String ttsResponseFormat = 'mp3';

  // OpenAI-compatible speech 默认路径。
  static const String defaultTtsSpeechPath = '/v1/audio/speech';

  // API 超时配置（毫秒）。
  static const int connectTimeout = 30000;
  static const int receiveTimeout = 300000; // 5分钟，用于报告轮询/长任务
  static const int sendTimeout = 300000;

  // 消息输入长度限制。
  static const int maxMessageLength = 10000;

  // 轮询间隔。
  static const int pollingInterval = 2000; // 2秒
  static const int reportPollingInterval = 3000; // 3秒

  // 录音配置。
  static const int maxRecordDuration = 60000; // 60秒
  static const int maxAudioSize = 10 * 1024 * 1024; // 10MB

  // 本地存储键。
  static const String sessionStorageKey = 'qa_agent_sessions';
  static const String configStorageKey = 'qa_agent_config';
  static const String themeStorageKey = 'qa_agent_theme';
  static const String reportStorageKey = 'qa_agent_reports';
}

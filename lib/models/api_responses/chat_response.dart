import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_response.freezed.dart';
part 'chat_response.g.dart';

/// 聊天请求
@freezed
class ChatRequest with _$ChatRequest {
  const factory ChatRequest({
    // 用户查询内容
    required String query,
    // 会话 ID
    String? sessionId,
    // 是否重置会话
    @Default(false) bool reset,
  }) = _ChatRequest;

  factory ChatRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatRequestFromJson(json);
}

/// 聊天响应
@freezed
class ChatResponse with _$ChatResponse {
  const factory ChatResponse({
    // 回答内容
    required String answer,
    // 会话 ID
    required String sessionId,
    // 查询类型
    String? queryType,
    // 使用的引擎
    List<String>? enginesUsed,
    // 置信度
    double? confidence,
    // 原始查询
    String? query,
  }) = _ChatResponse;

  factory ChatResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatResponseFromJson(json);
}

/// 历史消息项
@freezed
class HistoryMessage with _$HistoryMessage {
  const factory HistoryMessage({
    // 角色
    required String role,
    // 内容
    required String content,
    // 时间戳
    required int timestamp,
    // 额外信息
    Map<String, dynamic>? additionalKwargs,
  }) = _HistoryMessage;

  factory HistoryMessage.fromJson(Map<String, dynamic> json) =>
      _$HistoryMessageFromJson(json);
}

/// 会话历史响应
@freezed
class SessionHistoryResponse with _$SessionHistoryResponse {
  const factory SessionHistoryResponse({
    // 会话 ID
    required String sessionId,
    // 历史消息
    required List<HistoryMessage> history,
  }) = _SessionHistoryResponse;

  factory SessionHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$SessionHistoryResponseFromJson(json);
}

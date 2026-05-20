// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_response.freezed.dart';
part 'chat_response.g.dart';

/// 聊天请求：严格对应新版后端 `/api/chat`。
@freezed
class ChatRequest with _$ChatRequest {
  const factory ChatRequest({
    // 用户查询内容。
    required String query,
    // 会话 ID。
    @JsonKey(name: 'session_id') String? sessionId,
    // 是否重置会话。
    @Default(false) bool reset,
  }) = _ChatRequest;

  factory ChatRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatRequestFromJson(json);
}

/// 聊天响应：只保留新版后端字段，不做旧 API 兼容。
@freezed
class ChatResponse with _$ChatResponse {
  const factory ChatResponse({
    required bool success,
    // 回答内容。
    required String answer,
    // 会话 ID。
    @JsonKey(name: 'session_id') required String sessionId,
    // 知识增强是否生效。
    @JsonKey(name: 'enhancement_applied')
    @Default(false)
    bool enhancementApplied,
    // 匹配知识条数。
    @JsonKey(name: 'matched_entries') @Default(0) int matchedEntries,
    // 后端原始输出，调试时使用。
    String? raw,
    String? error,
  }) = _ChatResponse;

  factory ChatResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatResponseFromJson(json);
}

/// 历史消息项：对应 `/api/chat/{session_id}/history` 中的单条消息。
@freezed
class HistoryMessage with _$HistoryMessage {
  const factory HistoryMessage({
    required String role,
    required String content,
    @JsonKey(name: 'additional_kwargs') Map<String, dynamic>? additionalKwargs,
  }) = _HistoryMessage;

  factory HistoryMessage.fromJson(Map<String, dynamic> json) =>
      _$HistoryMessageFromJson(json);
}

/// 会话历史响应。
@freezed
class SessionHistoryResponse with _$SessionHistoryResponse {
  const factory SessionHistoryResponse({
    required bool success,
    @JsonKey(name: 'session_id') required String sessionId,
    @JsonKey(name: 'message_count') required int messageCount,
    required List<HistoryMessage> history,
  }) = _SessionHistoryResponse;

  factory SessionHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$SessionHistoryResponseFromJson(json);
}

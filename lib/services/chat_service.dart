import '../config/endpoints.dart';
import '../core/network/api_client.dart';
import '../models/api_responses/chat_response.dart';

/// 聊天服务。
class ChatService {
  final ApiClient _client;

  ChatService(this._client);

  /// 发送消息。
  Future<ChatResponse> sendMessage({
    required String query,
    String? sessionId,
    bool reset = false,
  }) async {
    final request = ChatRequest(
      query: query,
      sessionId: sessionId,
      reset: reset,
    );

    final response = await _client.post<Map<String, dynamic>>(
      Endpoints.chat,
      data: request.toJson(),
    );

    return ChatResponse.fromJson(response);
  }

  /// 获取会话历史。
  Future<SessionHistoryResponse> getSessionHistory(
    String sessionId, {
    int? limit,
  }) async {
    final queryParams = <String, dynamic>{};
    if (limit != null) {
      queryParams['limit'] = limit;
    }

    final response = await _client.get<Map<String, dynamic>>(
      Endpoints.chatHistory(sessionId),
      queryParameters: queryParams.isNotEmpty ? queryParams : null,
    );

    return SessionHistoryResponse.fromJson(response);
  }

  /// 删除会话历史。
  Future<void> deleteSession(String sessionId) async {
    await _client.delete<dynamic>(Endpoints.deleteSession(sessionId));
  }
}

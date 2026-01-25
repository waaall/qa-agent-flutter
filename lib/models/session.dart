import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';
part 'session.g.dart';

/// 会话
@freezed
class Session with _$Session {
  const factory Session({
    // 会话 ID
    required String sessionId,
    // 会话标题
    required String title,
    // 创建时间（毫秒时间戳）
    required int createdAt,
    // 最后访问时间（毫秒时间戳）
    required int lastAccessed,
    // 消息数量
    @Default(0) int messageCount,
  }) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
}

/// 会话列表状态
@freezed
class SessionState with _$SessionState {
  const factory SessionState({
    // 会话列表
    @Default([]) List<Session> sessions,
    // 当前会话 ID
    String? currentSessionId,
    // 是否加载中
    @Default(false) bool isLoading,
  }) = _SessionState;

  factory SessionState.fromJson(Map<String, dynamic> json) =>
      _$SessionStateFromJson(json);
}

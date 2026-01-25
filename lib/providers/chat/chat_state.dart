import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/message.dart';

part 'chat_state.freezed.dart';

/// 聊天状态
@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    // 消息列表
    @Default([]) List<Message> messages,
    // 是否正在加载
    @Default(false) bool isLoading,
    // 错误信息
    String? error,
  }) = _ChatState;
}

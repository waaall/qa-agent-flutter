// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

/// 消息元数据：对应新版 agent 返回的知识增强信息。
@freezed
class MessageMetadata with _$MessageMetadata {
  const factory MessageMetadata({
    // 知识增强是否生效。
    @JsonKey(name: 'enhancement_applied')
    @Default(false)
    bool enhancementApplied,
    // 匹配知识条数。
    @JsonKey(name: 'matched_entries') @Default(0) int matchedEntries,
    // 后端透传的其它元数据。
    @Default({}) Map<String, dynamic> extra,
  }) = _MessageMetadata;

  factory MessageMetadata.fromJson(Map<String, dynamic> json) =>
      _$MessageMetadataFromJson(json);
}

/// 聊天消息。
@freezed
class Message with _$Message {
  const factory Message({
    // 消息唯一 ID。
    required String id,
    // 角色：user / assistant。
    required String role,
    // 消息内容。
    required String content,
    // 时间戳（毫秒）。
    required int timestamp,
    // 消息元数据。
    MessageMetadata? metadata,
    // 是否加载中。
    @Default(false) bool isLoading,
    // 错误信息。
    String? error,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

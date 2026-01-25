import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

/// 消息元数据
@freezed
class MessageMetadata with _$MessageMetadata {
  const factory MessageMetadata({
    // 查询类型: knowledge | sql | api | general
    String? queryType,
    // 使用的引擎列表
    List<String>? enginesUsed,
    // 置信度
    double? confidence,
  }) = _MessageMetadata;

  factory MessageMetadata.fromJson(Map<String, dynamic> json) =>
      _$MessageMetadataFromJson(json);
}

/// 聊天消息
@freezed
class Message with _$Message {
  const factory Message({
    // 消息唯一 ID
    required String id,
    // 角色: user | assistant
    required String role,
    // 消息内容
    required String content,
    // 时间戳（毫秒）
    required int timestamp,
    // 消息元数据
    MessageMetadata? metadata,
    // 是否加载中
    @Default(false) bool isLoading,
    // 错误信息
    String? error,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

/// 查询类型枚举
enum QueryType {
  knowledge,
  sql,
  api,
  general,
}

/// 查询类型扩展
extension QueryTypeExtension on QueryType {
  String get displayName {
    switch (this) {
      case QueryType.knowledge:
        return '知识库';
      case QueryType.sql:
        return '数据库';
      case QueryType.api:
        return '实时数据';
      case QueryType.general:
        return '对话';
    }
  }

  String get emoji {
    switch (this) {
      case QueryType.knowledge:
        return '📚';
      case QueryType.sql:
        return '🗄️';
      case QueryType.api:
        return '🔌';
      case QueryType.general:
        return '💬';
    }
  }
}

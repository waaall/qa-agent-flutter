import 'package:freezed_annotation/freezed_annotation.dart';

part 'document.freezed.dart';
part 'document.g.dart';

/// 文档信息
@freezed
class Document with _$Document {
  const factory Document({
    // 文件名
    required String filename,
    // 标签
    required String label,
    // 上传时间
    required String uploadedAt,
    // 文件大小（字节）
    int? size,
    // 状态
    String? status,
  }) = _Document;

  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);
}

/// 文档列表响应
@freezed
class ListDocumentsResponse with _$ListDocumentsResponse {
  const factory ListDocumentsResponse({
    required List<Document> documents,
    required int count,
  }) = _ListDocumentsResponse;

  factory ListDocumentsResponse.fromJson(Map<String, dynamic> json) =>
      _$ListDocumentsResponseFromJson(json);
}

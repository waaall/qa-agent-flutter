import 'dart:async';

import '../config/endpoints.dart';
import '../config/app_config.dart';
import '../core/network/api_client.dart';
import '../models/document.dart';
import '../models/api_responses/upload_response.dart';

/// 文档服务
class DocumentService {
  final ApiClient _client;

  DocumentService(this._client);

  /// 上传文档
  /// POST /api/upload
  Future<UploadResponse> upload({
    required String filePath,
    String label = 'general',
  }) async {
    final response = await _client.uploadFile<Map<String, dynamic>>(
      Endpoints.upload,
      filePath: filePath,
      fieldName: 'file',
      extraFields: {'label': label},
    );

    return UploadResponse.fromJson(response);
  }

  /// 获取文档列表
  /// GET /api/documents
  Future<ListDocumentsResponse> list() async {
    final response = await _client.get<Map<String, dynamic>>(Endpoints.documents);
    return ListDocumentsResponse.fromJson(response);
  }

  /// 轮询上传状态
  /// GET /api/upload/status/{task_id}
  Stream<UploadTaskStatus> pollUploadStatus(
    String taskId, {
    Duration interval = const Duration(milliseconds: AppConfig.pollingInterval),
  }) async* {
    while (true) {
      final response = await _client.get<Map<String, dynamic>>(
        Endpoints.uploadStatus(taskId),
      );

      final status = UploadTaskStatus.fromJson(response);
      yield status;

      // 终止条件
      if (status.status == 'completed' || status.status == 'failed') {
        break;
      }

      await Future.delayed(interval);
    }
  }

  /// 更新向量索引
  /// POST /api/update_index
  Future<UpdateIndexResponse> updateIndex() async {
    final response = await _client.post<Map<String, dynamic>>(
      Endpoints.updateIndex,
    );
    return UpdateIndexResponse.fromJson(response);
  }

  /// 轮询更新状态
  /// GET /api/update_index/status/{task_id}
  Stream<UpdateTaskStatus> pollUpdateStatus(
    String taskId, {
    Duration interval = const Duration(milliseconds: AppConfig.pollingInterval),
  }) async* {
    while (true) {
      final response = await _client.get<Map<String, dynamic>>(
        Endpoints.updateStatus(taskId),
      );

      final status = UpdateTaskStatus.fromJson(response);
      yield status;

      // 终止条件
      if (status.status == 'completed' || status.status == 'failed') {
        break;
      }

      await Future.delayed(interval);
    }
  }
}

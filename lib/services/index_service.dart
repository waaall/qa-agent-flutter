import 'dart:async';

import '../config/app_config.dart';
import '../config/endpoints.dart';
import '../core/network/api_client.dart';
import '../models/api_responses/index_response.dart';

/// 知识索引更新服务。
class IndexService {
  final ApiClient _client;

  IndexService(this._client);

  /// 提交索引更新任务。
  Future<UpdateIndexResponse> updateIndex({bool rebuild = false}) async {
    final response = await _client.post<Map<String, dynamic>>(
      Endpoints.updateIndex,
      queryParameters: rebuild ? {'rebuild': true} : null,
    );
    return UpdateIndexResponse.fromJson(response);
  }

  /// 轮询索引更新状态。
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

      if (status.status == 'completed' || status.status == 'failed') {
        break;
      }

      await Future.delayed(interval);
    }
  }
}

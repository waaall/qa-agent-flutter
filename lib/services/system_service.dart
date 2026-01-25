import '../config/endpoints.dart';
import '../core/network/api_client.dart';
import '../models/api_responses/system_response.dart';

/// 系统服务
class SystemService {
  final ApiClient _client;

  SystemService(this._client);

  /// 健康检查
  /// GET /health
  Future<HealthResponse> checkHealth() async {
    final response = await _client.get<Map<String, dynamic>>(Endpoints.health);
    return HealthResponse.fromJson(response);
  }

  /// 获取系统统计
  /// GET /api/stats
  Future<StatsResponse> getStats() async {
    final response = await _client.get<Map<String, dynamic>>(Endpoints.stats);
    return StatsResponse.fromJson(response);
  }
}

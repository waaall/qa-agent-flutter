import '../config/endpoints.dart';
import '../core/network/api_client.dart';
import '../models/api_responses/system_response.dart';

/// 数据库服务
class DatabaseService {
  final ApiClient _client;

  DatabaseService(this._client);

  /// 获取数据库信息
  /// GET /api/database/info
  Future<DatabaseInfoResponse> getInfo({
    String? dbName,
    String? dbSource,
  }) async {
    final queryParams = <String, dynamic>{};
    if (dbName != null) queryParams['db_name'] = dbName;
    if (dbSource != null) queryParams['db_source'] = dbSource;

    final response = await _client.get<Map<String, dynamic>>(
      Endpoints.databaseInfo,
      queryParameters: queryParams.isNotEmpty ? queryParams : null,
    );

    return DatabaseInfoResponse.fromJson(response);
  }
}

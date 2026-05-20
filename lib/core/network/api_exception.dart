/// API 异常
class ApiException implements Exception {
  final String message;
  final int? statusCode;
  final dynamic data;

  ApiException({required this.message, this.statusCode, this.data});

  @override
  String toString() => 'ApiException: $message (statusCode: $statusCode)';

  /// 根据 HTTP 状态码获取友好的中文提示
  static String getMessageForStatusCode(int? statusCode) {
    switch (statusCode) {
      case 400:
        return '请求参数错误';
      case 401:
        return '未授权，请重新登录';
      case 403:
        return '拒绝访问';
      case 404:
        return '请求的资源不存在';
      case 408:
        return '请求超时';
      case 500:
        return '服务器内部错误';
      case 502:
        return '网关错误';
      case 503:
        return '服务不可用';
      case 504:
        return '网关超时';
      default:
        return '网络请求失败';
    }
  }
}

/// 网络异常
class NetworkException extends ApiException {
  NetworkException({String? message})
    : super(message: message ?? '网络连接失败，请检查网络设置');
}

/// 超时异常
class TimeoutException extends ApiException {
  TimeoutException({String? message}) : super(message: message ?? '请求超时，请稍后重试');
}

/// 服务器异常
class ServerException extends ApiException {
  ServerException({String? message, super.statusCode})
    : super(message: message ?? '服务器错误');
}

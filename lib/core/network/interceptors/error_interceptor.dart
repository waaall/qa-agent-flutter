import 'package:dio/dio.dart';

import '../api_exception.dart';

/// 错误拦截器
class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final exception = _transformException(err);
    handler.reject(
      DioException(
        requestOptions: err.requestOptions,
        error: exception,
        type: err.type,
        response: err.response,
      ),
    );
  }

  ApiException _transformException(DioException err) {
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return TimeoutException();

      case DioExceptionType.connectionError:
        return NetworkException();

      case DioExceptionType.badResponse:
        final statusCode = err.response?.statusCode;
        final data = err.response?.data;

        // 尝试从响应中提取错误消息
        String? message;
        if (data is Map<String, dynamic>) {
          message =
              data['message'] as String? ??
              data['error'] as String? ??
              data['detail'] as String?;
        }

        return ServerException(
          message: message ?? ApiException.getMessageForStatusCode(statusCode),
          statusCode: statusCode,
        );

      case DioExceptionType.cancel:
        return ApiException(message: '请求已取消');

      case DioExceptionType.badCertificate:
        return ApiException(message: '证书验证失败');

      case DioExceptionType.unknown:
        if (err.error is ApiException) {
          return err.error as ApiException;
        }
        return NetworkException(message: err.message);
    }
  }
}

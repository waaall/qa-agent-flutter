import 'package:dio/dio.dart';

import '../../utils/logger.dart';

/// 日志拦截器
class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    Logger.debug(
      '→ ${options.method} ${options.uri}',
      options.data,
    );
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    Logger.debug(
      '← ${response.statusCode} ${response.requestOptions.uri}',
      response.data,
    );
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    Logger.error(
      '✕ ${err.requestOptions.method} ${err.requestOptions.uri}',
      err.message,
    );
    handler.next(err);
  }
}

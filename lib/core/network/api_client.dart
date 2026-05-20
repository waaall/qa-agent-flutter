import 'package:dio/dio.dart';

import '../../config/app_config.dart';
import 'api_exception.dart';
import 'interceptors/logging_interceptor.dart';
import 'interceptors/error_interceptor.dart';

/// API 客户端
class ApiClient {
  late Dio _dio;
  String _baseUrl;

  ApiClient({String? baseUrl})
    : _baseUrl = baseUrl ?? AppConfig.defaultAgentBaseUrl {
    _dio = _createDio();
  }

  Dio _createDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: _baseUrl,
        connectTimeout: const Duration(milliseconds: AppConfig.connectTimeout),
        receiveTimeout: const Duration(milliseconds: AppConfig.receiveTimeout),
        sendTimeout: const Duration(milliseconds: AppConfig.sendTimeout),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    dio.interceptors.addAll([LoggingInterceptor(), ErrorInterceptor()]);

    return dio;
  }

  /// 更新后端地址
  void updateBaseUrl(String url) {
    _baseUrl = url;
    _dio.options.baseUrl = url;
  }

  /// 获取当前后端地址
  String get baseUrl => _baseUrl;

  /// GET 请求
  Future<T> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.get<T>(
        path,
        queryParameters: queryParameters,
        options: options,
      );
      return response.data as T;
    } on DioException catch (e) {
      throw e.error as ApiException? ?? NetworkException();
    }
  }

  /// POST 请求
  Future<T> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.post<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response.data as T;
    } on DioException catch (e) {
      throw e.error as ApiException? ?? NetworkException();
    }
  }

  /// DELETE 请求
  Future<T> delete<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.delete<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response.data as T;
    } on DioException catch (e) {
      throw e.error as ApiException? ?? NetworkException();
    }
  }

  /// 文件上传
  Future<T> uploadFile<T>(
    String path, {
    required String filePath,
    required String fieldName,
    Map<String, dynamic>? extraFields,
    void Function(int, int)? onSendProgress,
  }) async {
    try {
      final formData = FormData.fromMap({
        fieldName: await MultipartFile.fromFile(filePath),
        ...?extraFields,
      });

      final response = await _dio.post<T>(
        path,
        data: formData,
        onSendProgress: onSendProgress,
        options: Options(
          contentType: 'multipart/form-data',
          receiveTimeout: const Duration(minutes: 5),
        ),
      );
      return response.data as T;
    } on DioException catch (e) {
      throw e.error as ApiException? ?? NetworkException();
    }
  }

  /// 上传字节数据（用于音频等）
  Future<T> uploadBytes<T>(
    String path, {
    required List<int> bytes,
    required String filename,
    required String fieldName,
    Map<String, dynamic>? extraFields,
  }) async {
    try {
      final formData = FormData.fromMap({
        fieldName: MultipartFile.fromBytes(bytes, filename: filename),
        ...?extraFields,
      });

      final response = await _dio.post<T>(
        path,
        data: formData,
        options: Options(contentType: 'multipart/form-data'),
      );
      return response.data as T;
    } on DioException catch (e) {
      throw e.error as ApiException? ?? NetworkException();
    }
  }
}

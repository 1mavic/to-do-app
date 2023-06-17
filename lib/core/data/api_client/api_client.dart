import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:ya_todo_app/core/domain/serivces/app_loger.dart';

/// application api client
class ApiClient {
  /// application api client
  ApiClient(this._appLogger);

  final AppLogger _appLogger;

  /// initialyze api clietn with url and bearer token
  void init({
    required String baseUrl,
    required String token,
    List<Interceptor>? customInterceptors,
  }) {
    _dio.options.baseUrl = baseUrl;
    _dio.options.headers = {
      'Authorization': 'Bearer $token',
      'ContentType': 'application/json',
    };
    _dio.interceptors.addAll(
      [
        ...customInterceptors ?? <Interceptor>[],
        _CustomInterceptors(_appLogger),
      ],
    );
  }

  final Dio _dio = Dio();

  /// get dio client instance
  Dio get client => _dio;
}

class _CustomInterceptors extends Interceptor {
  const _CustomInterceptors(this._appLogger);

  final AppLogger _appLogger;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (kDebugMode) {
      _appLogger.logCustomData(
        '''REQUEST[${options.data}] => PATH: ${options.path}''',
      );
    }
    return handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    if (kDebugMode) {
      _appLogger.logCustomData(
        '''RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}''',
      );
    }

    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    _appLogger.logCustomData(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}',
    );

    return handler.reject(err);
  }
}

// TODO(macegora): add parse in compute?
// Object _parseAndDecode(String response) {
//   try {
//     return jsonDecode(response) as Object;
//   } catch (e) {
//     rethrow;
//   }
// }

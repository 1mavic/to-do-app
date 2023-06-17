import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

/// application api client
class ApiClient {
  /// application api client
  ApiClient();

  /// initialyze api clietn with url and bearer token
  void init({required String baseUrl, required String token}) {
    _dio.options.baseUrl = baseUrl;
    _dio.options.headers = {
      'Authorization': 'Bearer $token',
      'ContentType': 'application/json',
    };
    _dio.interceptors.add(
      const _CustomInterceptors(),
    );
  }

  final Dio _dio = Dio();

  /// get dio client instance
  Dio get client => _dio;
}

class _CustomInterceptors extends Interceptor {
  const _CustomInterceptors();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (kDebugMode) {
      log(
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
      log(
        '''RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}''',
      );
    }

    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}',
    );

    return handler.reject(err);
  }
}

/// Must be top-level function
Object _parseAndDecode(String response) {
  try {
    return jsonDecode(response) as Object;
  } catch (e) {
    rethrow;
  }
}

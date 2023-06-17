import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ya_todo_app/core/data/api_client/api_client.dart';
import 'package:ya_todo_app/core/data/repository/revision_repository.dart';
import 'package:ya_todo_app/core/domain/providers/revision_provider.dart';

class RetryInterceptor extends QueuedInterceptor {
  RetryInterceptor(
    this._repository,
    this._dataRevision,
    this._apiClient,
  );

  final RevisionRepository _repository;
  final DataRevision _dataRevision;
  final ApiClient _apiClient;

  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 400 && err.response?.data == 'unsynchronized data') {
      log(
        'REQUEST ERROR code 400 unsynchronized data, tring to refresh revision',
      );
      final reqOptions = err.requestOptions;
      try {
        final revision = await _repository.getRevisionNumber();
        if (revision != null) {
          _dataRevision.changeRevision(revision);
          reqOptions.headers.addAll({'X-Last-Known-Revision': revision});
          final newResult = await retry(_apiClient.client, err.requestOptions);
          return handler.resolve(newResult);
        } else {
          log('couldnt update revision number');
          return handler.reject(
            DioException(requestOptions: reqOptions),
          );
        }
      } catch (e) {
        log('couldnt update revision number');
        return handler.reject(
          DioException(requestOptions: reqOptions),
        );
      }
    }

    return handler.next(err);
  }

  static Future<Response<dynamic>> retry(Dio dio, RequestOptions requestOptions) async {
    final Options options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );
    try {
      final res = await dio.request<dynamic>(
        requestOptions.path,
        data: requestOptions.data,
        queryParameters: requestOptions.queryParameters,
        options: options,
      );

      return res;
    } catch (e) {
      rethrow;
    }
  }
}

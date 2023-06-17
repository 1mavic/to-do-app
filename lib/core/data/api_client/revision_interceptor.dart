import 'package:dio/dio.dart';
import 'package:ya_todo_app/core/domain/providers/revision_provider.dart';

class RevisionInterveptor extends Interceptor {
  const RevisionInterveptor(
    this._dataRevision,
  );

  final DataRevision _dataRevision;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    options.headers.addAll({
      'X-Last-Known-Revision': _dataRevision.currentRevision,
    });
    return super.onRequest(options, handler);
  }
}

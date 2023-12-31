import 'package:dio/dio.dart';
import 'package:ya_todo_app/core/domain/providers/revision_provider.dart';

/// dio intercapter for adding X-Last-Known-Revision header
class RevisionInterceptor extends Interceptor {
  /// dio intercapter for adding X-Last-Known-Revision header
  const RevisionInterceptor(
    this._dataRevision,
  );

  final DataRevision _dataRevision;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    options.headers.addAll({
      'X-Last-Known-Revision': _dataRevision.revision,
    });
    return super.onRequest(options, handler);
  }
}

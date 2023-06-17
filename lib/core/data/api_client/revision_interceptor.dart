import 'package:dio/dio.dart';

class RevisionInterveptor extends Interceptor {
  const RevisionInterveptor();

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    options.headers.addAll({
      'X-Last-Known-Revision': 8,
    });
    return super.onRequest(options, handler);
  }
}

import 'package:dio/dio.dart';

import '../logger.dart';

class LoggerInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    logger.i('''Request with options:
    uri: ${options.uri}
    method: ${options.method}
    headers: ${options.headers}
    queryParameters: ${options.queryParameters}
    data: ${options.data}
     ''');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.i('''Response:
    realUri: ${response.realUri}
    headers: ${response.headers}
    statusCode: ${response.statusCode}
    statusMessage: ${response.statusMessage}
    data: ${response.data}
     ''');
    super.onResponse(response, handler);
  }
}

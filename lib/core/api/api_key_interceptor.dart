import 'package:dio/dio.dart';

import '../env.dart';

class ApiKeyInterceptor extends Interceptor {
  // We may have a lot of api calls with common params, like api_key
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters['api_key'] = Env.apiKey;
    super.onRequest(options, handler);
  }
}

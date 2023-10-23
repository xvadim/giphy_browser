import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../api/api_key_interceptor.dart';
import '../../api/logger_interceptor.dart';

@module
abstract class ApiModule {
  @singleton
  Dio dioClient() {
    final options = BaseOptions(
      baseUrl: _endPoint,
      headers: {'Content-Type': 'application/json'},
    );

    return Dio(options)
      ..interceptors.addAll(
        [
          ApiKeyInterceptor(),
          if (kDebugMode) LoggerInterceptor(),
        ],
      );
  }

  static const _endPoint = 'https://api.giphy.com/v1/gifs';
}

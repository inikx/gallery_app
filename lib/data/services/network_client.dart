import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

///Клиент для работы с сетью
class NetworkClient {
  NetworkClient._internal();
  factory NetworkClient.get() {
    return _instance;
  }
  static final NetworkClient _instance = NetworkClient._internal();

  final Dio _dio = Dio();

  BaseOptions options() {
    const baseUrl = 'https://gallery.prod1.webant.ru/api';
    final BaseOptions options = BaseOptions(
      receiveTimeout: const Duration(seconds: 20),
      connectTimeout: const Duration(seconds: 20),
      sendTimeout: const Duration(seconds: 5),
      baseUrl: baseUrl,
    );

    return options;
  }

  Future<void> init() async {
    _dio.options = options();
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          return handler.next(options);
        },
      ),
    );
    _dio.interceptors.add(
      RetryInterceptor(
        dio: _dio,
        logPrint: log,
        retries: 3,
        retryDelays: const [
          Duration(seconds: 1),
          Duration(seconds: 2),
          Duration(seconds: 3),
        ],
      ),
    );
    _dio.interceptors.add(
      PrettyDioLogger(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: true,
        logPrint: (object) => debugPrint(object.toString()),
      ),
    );
  }

  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    final result = await _dio.get(path, queryParameters: queryParameters);

    return result;
  }
}

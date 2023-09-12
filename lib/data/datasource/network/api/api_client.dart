

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:sims_ppob/env.dart';

class ApiClient extends DioForNative {
  final SharedPreferences _prefs;

  ApiClient(this._prefs) {
    options.baseUrl = _prefs.getString('api_url') ?? Env.apiUrl;

    interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
    ));

    interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          final token = _prefs.getString('token');

          if (token != null) {
            options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
          }

          return handler.next(options);
        },
        onResponse: (Response response, ResponseInterceptorHandler handler) {
          return handler.next(response);
        },
        onError: (DioException e, ErrorInterceptorHandler handler) {
          if (e.response?.data is String) {
            e = e.copyWith(message: e.response?.data);
          }

          return handler.next(e);
        },
      ),
    );
  }
}
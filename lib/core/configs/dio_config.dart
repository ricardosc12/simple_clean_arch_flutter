import 'package:dio/browser.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_1/shared/data/dio_service.dart';
import 'package:flutter_application_1/shared/log/log_service.dart';

Dio createDioConfig({required String baseUrl}) {
  final options = BaseOptions(
    baseUrl: baseUrl,
    headers: {"Accept": "application/json", "Content-Type": "application/json"},
  );

  DioForBrowser dio = DioForBrowser(options);

  var adapter = BrowserHttpClientAdapter();
  adapter.withCredentials = true;
  dio.httpClientAdapter = adapter;

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        if (options.path != "/secure/auth/refresh" &&
            options.path != "/secure/api/usuarios/entrar") {
          options.headers["Authorization"] = "Bearer $TOKEN";
        }

        return handler.next(options);
      },
      onError: (DioException error, ErrorInterceptorHandler handler) {
        LogService.logger.error(error);
      },
    ),
  );

  return dio;
}

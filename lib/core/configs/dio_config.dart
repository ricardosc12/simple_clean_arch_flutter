// import 'package:dio/browser.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_1/shared/log/log_service.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

String TOKEN = "";

Dio createDioConfig({required String baseUrl}) {
  final options = BaseOptions(
    baseUrl: baseUrl,
    headers: {"Accept": "application/json"},
    contentType: "application/json",
  );

  Dio dio = Dio(options);

  dio.interceptors.add(
    TalkerDioLogger(
      talker: LogService.logger,
      settings: const TalkerDioLoggerSettings(
        printRequestHeaders: true,
        printResponseData: false,
        printResponseMessage: false,
        printErrorData: true,
        printErrorHeaders: true,
        printErrorMessage: true,
      ),
    ),
  );
  dio.interceptors.add(
    InterceptorsWrapper(
      onError: (DioException error, ErrorInterceptorHandler handler) {
        LogService.logger.error(error);

        return handler.next(error);
      },
    ),
  );

  // DioForBrowser dio = DioForBrowser(options);

  // var adapter = BrowserHttpClientAdapter();
  // adapter.withCredentials = true;
  // dio.httpClientAdapter = adapter;

  // dio.interceptors.add(
  //   InterceptorsWrapper(
  //     onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
  //       if (options.path != "/secure/auth/refresh" &&
  //           options.path != "/secure/api/usuarios/entrar") {
  //         options.headers["Authorization"] = "Bearer $TOKEN";
  //       }

  //       return handler.next(options);
  //     },
  //     onResponse: (
  //       Response<dynamic> response,
  //       ResponseInterceptorHandler handler,
  //     ) {
  //       final path = response.realUri.path;
  //       final data = response.data;
  //       if (path == "/secure/api/usuarios/entrar" &&
  //           data["access_token"] is String) {
  //         TOKEN = data["access_token"];
  //       }

  //       return handler.next(response);
  //     },
  //     onError: (DioException error, ErrorInterceptorHandler handler) {
  //       LogService.logger.error(error);

  //       return handler.next(error);
  //     },
  //   ),
  // );

  return dio;
}

import 'package:dio/browser.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_1/configs/app_config.dart';
import 'package:flutter_application_1/shared/data/network_service.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

String TOKEN = "";
class DioService extends NetworkService {
  final AppConfigState config;
  late final Dio dio;

  DioService({required this.config}) {
    // final cookieJar = CookieJar();
    final options = BaseOptions(
      baseUrl: config.baseUrl,

      headers: {"Accept": "application/json"},
    );
    // final dio = Dio();

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
      ),
    );

    // dio.interceptors.add(CookieManager(cookieJar));
    // dio.interceptors.add(
    // TalkerDioLogger(settings: const TalkerDioLoggerSettings()),
    // );

    this.dio = dio;
  }

  @override
  String get baseUrl => config.baseUrl;

  @override
  Future<Result<Response, Exception>> get(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final res = await dio.get(endpoint, data: queryParameters);
      return Success(res);
    } on DioException catch (e) {
      return Error(e);
    }
  }

  @override
  Future<Result<Response, Exception>> post(
    String endpoint, {
    Map<String, dynamic>? data,
  }) async {
    try {
      final res = await dio.post(endpoint, data: data);
      return Success(res);
    } on DioException catch (e) {
      return Error(e);
    }
  }
}

final networkProvider = Provider<NetworkService>((ref) {
  final config = ref.watch(appConfigProvider);
  return DioService(config: config);
});

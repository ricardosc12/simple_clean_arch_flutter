import 'package:dio/dio.dart';
import 'package:flutter_application_1/configs/app_config.dart';
import 'package:flutter_application_1/shared/data/network_service.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';

class DioService extends NetworkService {
  final AppConfigState config;
  late final Dio dio;

  DioService({required this.config}) {
    final dio = Dio(BaseOptions(baseUrl: config.baseUrl));
    dio.interceptors.add(
      TalkerDioLogger(settings: const TalkerDioLoggerSettings()),
    );

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

import 'package:dio/dio.dart';
import 'package:flutter_application_1/configs/app_config.dart';
import 'package:flutter_application_1/shared/data/network_service.dart';
import 'package:multiple_result/multiple_result.dart';

class DioService extends NetworkService {
  final AppConfigState config;
  final Dio dio = Dio();

  DioService({required this.config});

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

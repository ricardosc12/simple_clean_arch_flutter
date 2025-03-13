import 'package:dio/dio.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class NetworkService {
  String get baseUrl;

  Future<Result<Response, Exception>> get(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  });

  Future<Result<Response, Exception>> post(
    String endpoint, {
    Map<String, dynamic>? data,
  });
}

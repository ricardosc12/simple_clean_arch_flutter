import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/configs/app_config.dart';
import 'package:flutter_application_1/core/configs/dio_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final networkServiceProvider = Provider<Dio>((ref) {
  final appConfig = ref.watch(appConfigProvider);
  return createDioConfig(baseUrl: appConfig.baseUrl);
});

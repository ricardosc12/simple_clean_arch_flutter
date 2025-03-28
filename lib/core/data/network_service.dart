import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/configs/app_config.dart';
import 'package:flutter_application_1/core/configs/dio_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'network_service.g.dart';

@riverpod
Dio networkService(Ref ref) {
  final appConfig = ref.watch(appConfigProvider);
  return createDioConfig(baseUrl: appConfig.baseUrl);
}

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_application_1/core/adapters/response_api_adapter.dart';
import 'package:flutter_application_1/core/data/network_service.dart';
import 'package:flutter_application_1/core/dtos/respose_api_dto.dart';
import 'package:flutter_application_1/shared/data/dto/{{name.snakeCase()}}/{{name.snakeCase()}}_param.dart';
import 'package:flutter_application_1/shared/data/dto/{{name.snakeCase()}}/{{name.snakeCase()}}_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '{{name.snakeCase()}}_api.g.dart';

@riverpod
{{name.pascalCase()}}Api {{name.camelCase()}}Api (Ref ref) {
  final networkService = ref.watch(networkServiceProvider);
  return {{name.pascalCase()}}Api(networkService);
}

@RestApi(callAdapter: ResponseAdapter)
abstract class {{name.pascalCase()}}Api {
  factory {{name.pascalCase()}}Api(Dio dio) = _{{name.pascalCase()}}Api;

  @POST("/secure/api/{{name.snakeCase()}}")
  Future<Result<ApiSuccess<{{name.pascalCase()}}Response>, ApiError>> get{{name.pascalCase()}}(
    @Body() {{name.pascalCase()}}Param params,
  );
}

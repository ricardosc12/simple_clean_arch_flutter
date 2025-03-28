import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/adapters/response_api_adapter.dart';
import 'package:flutter_application_1/core/data/network_service.dart';
import 'package:flutter_application_1/core/dtos/respose_api_dto.dart';
import 'package:flutter_application_1/shared/data/dto/auth/login_params.dart';
import 'package:flutter_application_1/shared/data/dto/auth/login_response.dart';
import 'package:flutter_application_1/shared/data/dto/auth/refresh_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api.g.dart';

final authApiProvider = Provider<AuthApi>((ref) {
  final networkService = ref.watch(networkServiceProvider);
  return AuthApi(networkService);
});

@RestApi(callAdapter: ResponseAdapter)
abstract class AuthApi {
  factory AuthApi(Dio dio) = _AuthApi;

  @POST("/secure/api/usuarios/entrar")
  Future<Result<ApiSuccess<LoginResponse>, ApiError>> login(
    @Body() LoginParam params,
  );

  @GET("/secure/auth/refresh")
  Future<Result<RefreshTokenResponse, ApiError>> refresh();
}

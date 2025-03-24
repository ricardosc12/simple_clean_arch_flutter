import 'package:dio/dio.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_application_1/shared/data/network_service.dart';
import 'package:flutter_application_1/shared/domain/dto/login_user.dart';
import 'package:flutter_application_1/shared/domain/dto/users/get_users.dart';
import 'package:flutter_application_1/shared/domain/models/get_user.dart';
import 'package:flutter_application_1/shared/domain/models/user.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class AuthRepository {
  Future<Result<User, Exception>> login(LoginUserDto dto);
  Future<Result<RefreshData, Exception>> refresh();
  Future<Result<IList<User>, Exception>> getUsers();
}

class AuthRepositoryImpl extends AuthRepository {
  final NetworkService networkService;
  AuthRepositoryImpl({required this.networkService});

  @override
  Future<Result<User, Exception>> login(LoginUserDto dto) async {
    final Result<Response, Exception> response = await networkService.post(
      "/secure/api/usuarios/entrar",
      data: dto.toJson(),
    );

    return response.when(
      (data) {
        final loginResponse = LoginResponseDto.fromJson(data.data);
        return Success(
          User(
            email: loginResponse.dados.usuario.email,
            grupoEmp: loginResponse.dados.usuario.grupoAtivo,
            accessToken: loginResponse.accessToken,
          ),
        );
      },
      (e) {
        return Error(Exception(e));
      },
    );
  }

  @override
  Future<Result<RefreshData, Exception>> refresh() async {
    final Result<Response, Exception> response = await networkService.get(
      "/secure/auth/refresh",
    );

    return response.when(
      (data) {
        final refreshData = RefreshData.fromJson(data.data);
        return Success(refreshData);
      },
      (e) {
        return Error(Exception(e));
      },
    );
  }

  @override
  Future<Result<IList<User>, Exception>> getUsers() async {
    final Result<Response, Exception> response = await networkService.post(
      "/secure/api/usuarios/buscar",
      data: {"grupo_emp": "JC", "paginacao": 250, "skip": 0, "bases": []},
    );

    return response.when(
      (data) {
        final usersResponse = GetUsersDto.fromJson(data.data);
        List<User> users =
            usersResponse.dados
                .map(
                  (e) => User(
                    email: e.info?.nome ?? "",
                    grupoEmp: e.info?.grupo_user ?? "",
                    accessToken: "",
                  ),
                )
                .toList();

        return Success(users.lock);
      },
      (e) {
        return Error(Exception(e));
      },
    );
  }
}

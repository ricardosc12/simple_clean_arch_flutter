import 'package:flutter_application_1/shared/data/network_service.dart';
import 'package:flutter_application_1/shared/domain/dto/login_user.dart';
import 'package:flutter_application_1/shared/domain/models/user.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class AuthRepository {
  Future<Result<User, Exception>> login(LoginUserDto dto);
}

class AuthRepositoryImpl extends AuthRepository {
  final NetworkService networkService;
  AuthRepositoryImpl({required this.networkService});

  @override
  Future<Result<User, Exception>> login(LoginUserDto dto) async {
    // await Future.delayed(Duration(milliseconds: 1000));

    // final Result<Response, Exception> response = await networkService.post(
    //   "/api/usuarios/entrar",
    //   data: dto.toJson(),
    // );

    return Success(User(id: "091823", email: "rick@test.com", grupoEmp: "JC"));

    // if (response.isSuccess()) {
    //   return Success(
    //     User(id: "091823", email: "rick@test.com", grupoEmp: "JC"),
    //   );
    // } else {
    //   return Error(Exception(response));
    // }
  }
}

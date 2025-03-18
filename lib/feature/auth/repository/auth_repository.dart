import 'package:dio/dio.dart';
import 'package:flutter_application_1/shared/data/network_service.dart';
import 'package:flutter_application_1/shared/domain/models/user.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class AuthRepository {
  Future<Result<User, Exception>> login({
    required String login,
    required String password,
  });
}

class AuthRepositoryImpl extends AuthRepository {
  final NetworkService networkService;
  AuthRepositoryImpl({required this.networkService});

  @override
  Future<Result<User, Exception>> login({
    required String login,
    required String password,
  }) async {
    // await Future.delayed(Duration(milliseconds: 1000));
    return Success(User(id: "091823", email: "rick@test.com", grupoEmp: "JC"));

    // final Result<Response, Exception> response = await networkService.post(
    //   "/api/login",
    //   data: {"login": login, "password": password},
    // );

    // if (response.isSuccess()) {
    //   return Success(
    //     User(id: "091823", email: "rick@test.com", grupoEmp: "JC"),
    //   );
    // } else {
    //   return Error(Exception(response));
    // }
  }
}

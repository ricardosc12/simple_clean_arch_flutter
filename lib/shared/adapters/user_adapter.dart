import 'package:flutter_application_1/core/exceptions/app_error.dart';
import 'package:flutter_application_1/shared/data/dto/auth/login_response.dart';
import 'package:flutter_application_1/shared/domain/models/user_model.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class UserAdapter {
  static Result<User, AppError> fromRequest(LoginResponse response) {
    final usuario = response.usuario;
    final grupo = response.grupos[usuario.grupoAtivo];

    if (grupo == null || grupo is! GrupoOrAtivo) {
      return Error(AppError(message: "Usuário sem empresa cadastrada!"));
    }

    return Success(
      User(
        email: usuario.email,
        grupoEmp: usuario.grupoAtivo!,
        bases: grupo.grupo.bases?.keys.toList() ?? [],
        grupos: response.grupos.keys.toList(),
      ),
    );
  }
}

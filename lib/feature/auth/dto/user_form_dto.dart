import 'package:flutter_application_1/shared/domain/dto/form_schema.dart';
import 'package:luthor/luthor.dart';

enum UserFields { usuario, senha }

abstract class UserSchema {
  static final Map<UserFields, Validator> validators = {
    UserFields.usuario: l
        .string(message: "CPF deve ser uma string")
        .min(1, message: "CPF obrigatório")
        .required(message: "CPF obrigatório"),
    UserFields.senha: l
        .string(message: "Senha deve ser uma string")
        .min(1, message: "CPF obrigatório")
        .required(message: "Senha obrigatória"),
  };

  static FormValidation? validator(UserFields field) {
    return formValidator(validators[field]);
  }
}
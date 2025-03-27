import 'package:flutter_application_1/shared/data/dto/auth/login_params.dart';
import 'package:flutter_application_1/shared/domain/dto/form_schema.dart';
import 'package:flutter_application_1/shared/log/log_service.dart';
import 'package:flutter_application_1/shared/presentation/form_controller.dart';
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

class UserFormController extends FormController<LoginParam> {
  UserFormController({required super.onSuccess});

  @override
  Future<FormStatus> submit() async {
    try {
      final state = formKey.currentState;

      if (state == null || !state.saveAndValidate()) {
        return FormStatus.invalid;
      }

      final values = state.value;

      onSuccess(LoginParam.fromJson(values));
      return FormStatus.submitted;
    } catch (e) {
      LogService.logger.error(e);
      return FormStatus.error;
    }
  }
}

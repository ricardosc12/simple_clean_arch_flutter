import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/domain/dto/login_user.dart';
import 'package:flutter_application_1/shared/log/log_service.dart';
import 'package:flutter_application_1/shared/presentation/form_controller.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

enum UserFields { login, password }

abstract class UserSchema {
  static final Map<UserFields, FormFieldValidator<String?>> validators = {
    // UserFields.login: FormBuilderValidators.compose([
    //   FormBuilderValidators.required(errorText: "CPF obrigatório"),
    //   FormBuilderValidators.min(0, errorText: "CPF obrigatório"),
    // ]),
    UserFields.password: FormBuilderValidators.compose([
      FormBuilderValidators.required(errorText: "Senha obrigatória"),
      FormBuilderValidators.min(0, errorText: "Senha obrigatória"),
    ]),
  };

  static FormFieldValidator<String?>? validator(UserFields field) {
    return validators[field];
  }
}

class UserFormController extends FormController<LoginUserDto> {
  UserFormController({required super.onSuccess});

  @override
  Future<FormStatus> submit() async {
    try {
      final state = formKey.currentState;

      if (state == null || !state.saveAndValidate()) {
        return FormStatus.invalid;
      }

      final values = state.value;

      onSuccess(
        LoginUserDto(
          usuario: values[UserFields.login.name],
          senha: values[UserFields.password.name],
        ),
      );
      return FormStatus.submitted;
    } catch (e) {
      LogService.logger.error(e);
      return FormStatus.error;
    }
  }
}

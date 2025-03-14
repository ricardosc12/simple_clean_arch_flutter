import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/domain/dto/login_user.dart';
import 'package:flutter_application_1/shared/presentation/form_controller.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

enum UserFields { login, password }

abstract class UserSchema {
  static final Map<UserFields, FormFieldValidator<String?>> validators = {
    UserFields.login: FormBuilderValidators.compose([
      FormBuilderValidators.required(errorText: "CPF obrigatório"),
      FormBuilderValidators.min(0, errorText: "CPF obrigatório"),
    ]),
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
  Future<bool> submit() async {
    try {
      final state = formKey.currentState;

      if (state == null || !state.saveAndValidate()) {
        return false;
      }

      final values = state.value;

      onSuccess(
        LoginUserDto(
          login: values[UserFields.login.name],
          password: values[UserFields.password.name],
        ),
      );
      return true;
    } catch (e) {
      // LOG: Sistema de Log
      print(e);
      return false;
    }
  }
}

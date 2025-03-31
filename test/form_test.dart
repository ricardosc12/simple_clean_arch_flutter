import 'package:flutter_application_1/feature/auth/dto/user_form_dto.dart';
import 'package:flutter_application_1/shared/data/dto/auth/login_params.dart';
import 'package:flutter_test/flutter_test.dart';

import 'utils/form_test_kit.dart';

void main() {
  test("Test UserForm", () {
    final dto = LoginParam(usuario: "0192401928419", senha: "12098312093");

    final tester = FormTestKit(
      validators: UserSchema.validators,
      fromJson: LoginParam.fromJson,
      toJson: dto.toJson,
      fields: UserFields.values,
    );

    tester.test();
  });
}

import 'package:flutter_application_1/feature/auth/providers/user_form.dart';
import 'package:flutter_application_1/shared/domain/dto/login_user.dart';
import 'package:flutter_test/flutter_test.dart';

import 'utils/form_test_kit.dart';

void main() {
  test("Test UserForm", () {
    final dto = LoginUserDto(usuario: "0192401928419", senha: "12098312093");

    final tester = FormTestKit(
      validators: UserSchema.validators,
      fromJson: LoginUserDto.fromJson,
      toJson: dto.toJson,
      fields: UserFields.values,
    );

    tester.test();
  });
}

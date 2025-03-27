import 'package:flutter_application_1/shared/data/dto/auth/login_params.dart';
import 'package:flutter_application_1/shared/log/log_service.dart';
import 'package:flutter_application_1/shared/presentation/form_controller.dart';
import 'package:flutter_application_1/feature/auth/controllers/auth_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final formUserProvider = Provider<UserFormController>((ref) {
  final auth = ref.watch(authProvider.notifier);
  return UserFormController(onSuccess: auth.login);
}, dependencies: authProvider.allTransitiveDependencies);

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

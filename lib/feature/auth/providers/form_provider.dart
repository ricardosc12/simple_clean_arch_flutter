import 'package:flutter_application_1/feature/auth/providers/auth_provider.dart';
import 'package:flutter_application_1/feature/auth/providers/user_form.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final formUserProvider = Provider<UserFormController>((ref) {
  final auth = ref.watch(authProvider.notifier);
  return UserFormController(onSuccess: auth.login);
}, dependencies: authProvider.allTransitiveDependencies);

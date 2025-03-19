import 'package:flutter_application_1/configs/app_config.dart';
import 'package:flutter_application_1/feature/auth/providers/auth_state.dart';
import 'package:flutter_application_1/feature/auth/repository/auth_repository.dart';
import 'package:flutter_application_1/shared/data/dio_service.dart';
import 'package:flutter_application_1/shared/domain/dto/login_user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
class Auth extends _$Auth {
  late final AuthRepository _authRepository;

  @override
  AuthState build() {
    final config = ref.watch(appConfigProvider);
    _authRepository = AuthRepositoryImpl(
      networkService: DioService(config: config),
    );
    return const AuthState.init();
  }

  void login(LoginUserDto data) async {
    state = const AuthState.loading();

    final res = await _authRepository.login(data);

    res.when(
      (user) {
        state = AuthState.logged(user: user);
      },
      (e) {
        state = AuthState.error();
      },
    );
  }
}

import 'package:flutter_application_1/feature/auth/providers/auth_state.dart';
import 'package:flutter_application_1/feature/auth/repository/auth_repository.dart';
import 'package:flutter_application_1/feature/dashboard/repository/dash_provider.dart';
import 'package:flutter_application_1/shared/data/dio_service.dart';
import 'package:flutter_application_1/shared/domain/dto/login_user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
class Auth extends _$Auth {
  late AuthRepository _authRepository;

  @override
  AuthState build() {
    _authRepository = AuthRepositoryImpl(
      networkService: ref.watch(networkProvider),
    );

    refresh();

    return const AuthState.init();
  }

  void login(LoginUserDto data) async {
    state = const AuthState.loading();

    final res = await _authRepository.login(data);

    res.when(
      (user) {
        state = AuthState.logged(user: user);
        TOKEN = user.accessToken;
      },
      (e) {
        state = AuthState.error();
      },
    );
  }

  void getUsers() async {
    final res = await _authRepository.getUsers();

    res.whenSuccess((data) {
      ref.read(dashProvider.notifier).setUsers(data);
    });
  }

  void refresh() async {
    _authRepository.refresh().then((data) {
      data.when(
        (data) {
          state = AuthState.refreshed(refreshData: data);
          TOKEN = data.accessToken;
        },
        (e) {
          state = AuthState.error();
        },
      );
    });
  }
}

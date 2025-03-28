import 'package:flutter_application_1/core/configs/dio_config.dart';
import 'package:flutter_application_1/feature/auth/states/auth_state.dart';
import 'package:flutter_application_1/shared/data/dto/auth/login_params.dart';
import 'package:flutter_application_1/shared/data/repository/auth_repository.dart';
import 'package:flutter_application_1/shared/domain/models/get_user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  AuthState build() {
    refresh();
    return const AuthState.init();
  }

  void login(LoginParam data) async {
    state = const AuthState.loading();

    final res = await ref.read(authRepositoryProvider).login(data);

    res.when(
      (user) {
        state = AuthState.logged(user: user);
      },
      (e) {
        state = AuthState.error();
      },
    );
  }

  void refresh() async {
    state = const AuthState.loading();
    
    final res = await ref.read(authRepositoryProvider).refresh();

    res.when(
      (data) {
        TOKEN = data.accessToken;
        state = AuthState.refreshed(
          refreshData: RefreshData(accessToken: data.accessToken),
        );
      },
      (e) {
        state = AuthState.error();
      },
    );
  }
}

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_application_1/core/configs/dio_config.dart';
import 'package:flutter_application_1/core/extensions/riverpod_persistent_extension.dart';
import 'package:flutter_application_1/feature/auth/states/auth_state.dart';
import 'package:flutter_application_1/shared/data/dto/auth/login_params.dart';
import 'package:flutter_application_1/shared/data/repository/auth_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.g.dart';

@Riverpod(keepAlive: true)
class Auth extends _$Auth {
  @override
  FutureOr<AuthState> build() async {
    // refresh();
    return await ref.autoPersist(
      key: "auth",
      initial: AuthState.unlogged(),
      fromJson: AuthState.fromJson,
      ifSave: (data) => data is Logged,
    );
  }

  void login(LoginParam data) async {
    state = AsyncLoading(); 
    final res = await ref.read(authRepositoryProvider).login(data);

    res.when(
      (user) {
        state = AsyncValue.data(AuthState.logged(user: user));
      },
      (e) {
        state = AsyncValue.error(e, StackTrace.current);
      },
    );
  }

  void refresh() async {
    final res = await ref.read(authRepositoryProvider).refresh();

    res.when(
      (data) {
        TOKEN = data.accessToken;
      },
      (e) {
        state = AsyncValue.error(e, StackTrace.current);
      },
    );
  }
}

@riverpod
IList<String> userGrupos(Ref ref) {
  final user = ref.watch(authProvider).valueOrNull;
  return user is Logged ? user.user.grupos.lock : IList();
}

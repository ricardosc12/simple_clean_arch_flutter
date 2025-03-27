import 'package:flutter_application_1/feature/auth/providers/auth_state.dart';
import 'package:flutter_application_1/feature/auth/providers/json.dart';
import 'package:flutter_application_1/shared/data/dto/auth/login_params.dart';
import 'package:flutter_application_1/shared/data/dto/docs/get_doc_params.dart';
import 'package:flutter_application_1/shared/data/repository/auth_repository.dart';
import 'package:flutter_application_1/shared/data/repository/doc_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

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

  void getUsers() async {
    // final res = await _authRepository.getUsers();

    // res.whenSuccess((data) {
    //   ref.read(dashProvider.notifier).setUsers(data);
    // });
  }

  void refresh() async {
    // _authRepository.refresh().then((data) {
    //   data.when(
    //     (data) {
    //       state = AuthState.refreshed(refreshData: data);
    //       TOKEN = data.accessToken;
    //     },
    //     (e) {
    //       state = AuthState.error();
    //     },
    //   );
    // });
  }

  void getDocs() async {
    final params = GetDocsParam.fromJson(DOC_PARAM);

    final res = await ref.read(docsRepositoryProvider).getDocs(params);

    res.whenSuccess((docs) {
      print(docs);
    });
  }
}

import 'package:flutter_application_1/core/exceptions/app_error.dart';
import 'package:flutter_application_1/shared/data/dto/auth/login_params.dart';
import 'package:flutter_application_1/shared/data/dto/auth/login_response.dart';
import 'package:flutter_application_1/shared/data/source/auth_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final authApi = ref.watch(authApiProvider);
  return DocRepositoryRemoteImpl(authApi);
});

abstract class AuthRepository {
  Future<Result<Usuario, AppError>> login(LoginParam params);
}

class DocRepositoryRemoteImpl implements AuthRepository {
  final AuthApi _authApi;

  const DocRepositoryRemoteImpl(this._authApi);

  @override
  Future<Result<Usuario, AppError>> login(LoginParam params) async {
    final res = await _authApi.login(params);

    return res.when(
      (response) {
        return Success(response.dados.usuario);
      },
      (e) {
        return Error(AppError(message: e.message));
      },
    );
  }
}

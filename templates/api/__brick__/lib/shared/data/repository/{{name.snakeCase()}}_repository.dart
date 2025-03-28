import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:flutter_application_1/core/exceptions/app_error.dart';
import 'package:flutter_application_1/shared/data/source/{{name.snakeCase()}}_api.dart';
import 'package:flutter_application_1/shared/data/dto/{{name.snakeCase()}}/{{name.snakeCase()}}_param.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '{{name.snakeCase()}}_repository.g.dart';

@riverpod
{{name.pascalCase()}}Repository {{name.camelCase()}}Repository(Ref ref) {
  final api = ref.watch({{name.camelCase()}}ApiProvider);
  return {{name.pascalCase()}}RepositoryImpl(api);
}

abstract class {{name.pascalCase()}}Repository {
  Future<Result<dynamic, AppError>> get{{name.pascalCase()}}({{name.pascalCase()}}Param params);
}

class {{name.pascalCase()}}RepositoryImpl implements {{name.pascalCase()}}Repository {
  final {{name.pascalCase()}}Api _api;

  const {{name.pascalCase()}}RepositoryImpl(this._api);

  @override
  Future<Result<dynamic, AppError>> get{{name.pascalCase()}}(
    {{name.pascalCase()}}Param params,
  ) async {
    final res = await _api.get{{name.pascalCase()}}(params);

    return res.when(
      (response) => Success(response),
      (e) => Error(AppError(message: e.message)),
    );
  }
}
import 'package:freezed_annotation/freezed_annotation.dart';

part '{{name.snakeCase()}}_state.freezed.dart';
part '{{name.snakeCase()}}_state.g.dart';

// Exemplo de "Union Types"
@freezed
sealed class Union{{name.pascalCase()}}State with _$Union{{name.pascalCase()}}State {
  const factory Union{{name.pascalCase()}}State.internal({
    required String name,
    required String internalId,
  }) = {{name.pascalCase()}}Internal;

  const factory Union{{name.pascalCase()}}State.external({required String name}) =
      {{name.pascalCase()}}External;

  factory Union{{name.pascalCase()}}State.fromJson(Map<String, dynamic> json) =>
      _$Union{{name.pascalCase()}}StateFromJson(json);
}

@freezed
abstract class {{name.pascalCase()}}State with _${{name.pascalCase()}}State {
  const factory {{name.pascalCase()}}State({required String data}) = _{{name.pascalCase()}}State;

  factory {{name.pascalCase()}}State.fromJson(Map<String, dynamic> json) =>
      _${{name.pascalCase()}}StateFromJson(json);
}

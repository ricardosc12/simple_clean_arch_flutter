import 'package:freezed_annotation/freezed_annotation.dart';

part '{{name.snakeCase()}}_param.freezed.dart';
part '{{name.snakeCase()}}_param.g.dart';

@freezed
abstract class {{name.pascalCase()}}Param with _${{name.pascalCase()}}Param {
  const factory {{name.pascalCase()}}Param({
    required String arg1,
    required int arg2,
    required DateTime arg3,
  }) = _{{name.pascalCase()}}Param;

  factory {{name.pascalCase()}}Param.fromJson(Map<String, dynamic> json) =>
      _${{name.pascalCase()}}ParamFromJson(json);
}
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_application_1/shared/utils/enum.dart';

part '{{name.snakeCase()}}_response.freezed.dart';
part '{{name.snakeCase()}}_response.g.dart';

@JsonEnum(alwaysCreate: true)
enum {{name.pascalCase()}}Status with EnumUpperStatus {
  @JsonValue("status1") status1("Status 1"),
  @JsonValue("status2") status2("Status 2"),
  desconhecido("Desconhecido");

  const {{name.pascalCase()}}Status(this.itemLabel);

  @override
  final String itemLabel;
  @override
  String toJson() => _${{name.pascalCase()}}StatusEnumMap[this] ?? name.toUpperCase();
}

@freezed
abstract class {{name.pascalCase()}}Response with _${{name.pascalCase()}}Response {
  factory {{name.pascalCase()}}Response({
    required String arg1,
    required int arg2,
    @JsonKey(unknownEnumValue: {{name.pascalCase()}}Status.desconhecido) required {{name.pascalCase()}}Status arg3,
  }) = _{{name.pascalCase()}}Response;

  factory {{name.pascalCase()}}Response.fromJson(Map<String, dynamic> json) =>
      _${{name.pascalCase()}}ResponseFromJson(json);
}
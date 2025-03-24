import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user.freezed.dart';
part 'get_user.g.dart';

@freezed
abstract class LoginResponseDto with _$LoginResponseDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LoginResponseDto({
    required bool status,
    required LoginData dados,
    required String accessToken,
    required String mensagem,
  }) = _LoginResponseDto;

  factory LoginResponseDto.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDtoFromJson(json);
}

@freezed
abstract class LoginData with _$LoginData {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LoginData({required LoginDataUser usuario}) = _LoginData;

  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);
}

@freezed
abstract class LoginDataUser with _$LoginDataUser {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LoginDataUser({
    required String nome,
    required String login,
    required String email,
    required String grupoAtivo,
    required bool superUser,
    required String cpf,
  }) = _LogiDatanUser;

  factory LoginDataUser.fromJson(Map<String, dynamic> json) =>
      _$LoginDataUserFromJson(json);
}

@freezed
abstract class RefreshData with _$RefreshData {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory RefreshData({required String accessToken}) = _RefreshData;

  factory RefreshData.fromJson(Map<String, dynamic> json) =>
      _$RefreshDataFromJson(json);
}

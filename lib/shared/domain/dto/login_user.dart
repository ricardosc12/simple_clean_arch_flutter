import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_user.freezed.dart';
part 'login_user.g.dart';

@freezed
abstract class LoginUserDto with _$LoginUserDto {
  factory LoginUserDto({
    required String usuario,
    required String senha,
    //TODO: Obter dinâmicamente
    @Default("America/Sao_Paulo") String timezone,
  }) = _LoginUserDto;

  factory LoginUserDto.fromJson(Map<String, dynamic> json) =>
      _$LoginUserDtoFromJson(json);
}

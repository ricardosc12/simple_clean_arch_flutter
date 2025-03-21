// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginUserDto _$LoginUserDtoFromJson(Map<String, dynamic> json) =>
    _LoginUserDto(
      usuario: json['usuario'] as String,
      senha: json['senha'] as String,
      timezone: json['timezone'] as String? ?? "America/Sao_Paulo",
    );

Map<String, dynamic> _$LoginUserDtoToJson(_LoginUserDto instance) =>
    <String, dynamic>{
      'usuario': instance.usuario,
      'senha': instance.senha,
      'timezone': instance.timezone,
    };

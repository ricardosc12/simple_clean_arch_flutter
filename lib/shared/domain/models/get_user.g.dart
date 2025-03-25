// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponseDto _$LoginResponseDtoFromJson(Map<String, dynamic> json) =>
    _LoginResponseDto(
      status: json['status'] as bool,
      dados: LoginData.fromJson(json['dados'] as Map<String, dynamic>),
      accessToken: json['access_token'] as String,
      mensagem: json['mensagem'] as String,
    );

Map<String, dynamic> _$LoginResponseDtoToJson(_LoginResponseDto instance) =>
    <String, dynamic>{
      'status': instance.status,
      'dados': instance.dados,
      'access_token': instance.accessToken,
      'mensagem': instance.mensagem,
    };

_LoginData _$LoginDataFromJson(Map<String, dynamic> json) => _LoginData(
  usuario: LoginDataUser.fromJson(json['usuario'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LoginDataToJson(_LoginData instance) =>
    <String, dynamic>{'usuario': instance.usuario};

_LogiDatanUser _$LogiDatanUserFromJson(Map<String, dynamic> json) =>
    _LogiDatanUser(
      nome: json['nome'] as String,
      login: json['login'] as String,
      email: json['email'] as String,
      grupoAtivo: json['grupo_ativo'] as String,
      superUser: json['super_user'] as bool,
      cpf: json['cpf'] as String,
    );

Map<String, dynamic> _$LogiDatanUserToJson(_LogiDatanUser instance) =>
    <String, dynamic>{
      'nome': instance.nome,
      'login': instance.login,
      'email': instance.email,
      'grupo_ativo': instance.grupoAtivo,
      'super_user': instance.superUser,
      'cpf': instance.cpf,
    };

_RefreshData _$RefreshDataFromJson(Map<String, dynamic> json) =>
    _RefreshData(accessToken: json['access_token'] as String);

Map<String, dynamic> _$RefreshDataToJson(_RefreshData instance) =>
    <String, dynamic>{'access_token': instance.accessToken};

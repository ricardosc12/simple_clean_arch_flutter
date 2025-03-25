// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetUsersDto _$GetUsersDtoFromJson(Map<String, dynamic> json) => _GetUsersDto(
  dados: IList<GetUsersItem>.fromJson(
    json['dados'],
    (value) => GetUsersItem.fromJson(value as Map<String, dynamic>),
  ),
  mensagem: json['mensagem'] as String,
  status: json['status'] as bool,
  total: (json['total'] as num).toInt(),
);

Map<String, dynamic> _$GetUsersDtoToJson(_GetUsersDto instance) =>
    <String, dynamic>{
      'dados': instance.dados.toJson((value) => value),
      'mensagem': instance.mensagem,
      'status': instance.status,
      'total': instance.total,
    };

_GetUsersItem _$GetUsersItemFromJson(Map<String, dynamic> json) =>
    _GetUsersItem(
      cpf: json['cpf'] as String?,
      login: json['login'] as String?,
      info:
          json['info'] == null
              ? null
              : GetUsersInfo.fromJson(json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetUsersItemToJson(_GetUsersItem instance) =>
    <String, dynamic>{
      'cpf': instance.cpf,
      'login': instance.login,
      'info': instance.info,
    };

_GetUsersInfo _$GetUsersInfoFromJson(Map<String, dynamic> json) =>
    _GetUsersInfo(
      nome: json['nome'] as String?,
      grupo_user: json['grupo_user'] as String?,
    );

Map<String, dynamic> _$GetUsersInfoToJson(_GetUsersInfo instance) =>
    <String, dynamic>{'nome': instance.nome, 'grupo_user': instance.grupo_user};

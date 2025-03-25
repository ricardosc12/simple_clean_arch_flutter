// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  name: json['name'] as String?,
  email: json['email'] as String,
  grupoEmp: json['grupo_emp'] as String,
  accessToken: json['access_token'] as String,
  bases: (json['bases'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'name': instance.name,
  'email': instance.email,
  'grupo_emp': instance.grupoEmp,
  'access_token': instance.accessToken,
  'bases': instance.bases,
};

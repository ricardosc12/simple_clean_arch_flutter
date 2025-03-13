// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Init _$InitFromJson(Map<String, dynamic> json) =>
    Init($type: json['runtimeType'] as String?);

Map<String, dynamic> _$InitToJson(Init instance) => <String, dynamic>{
  'runtimeType': instance.$type,
};

Logged _$LoggedFromJson(Map<String, dynamic> json) => Logged(
  user: User.fromJson(json['user'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$LoggedToJson(Logged instance) => <String, dynamic>{
  'user': instance.user,
  'runtimeType': instance.$type,
};

Loading _$LoadingFromJson(Map<String, dynamic> json) =>
    Loading($type: json['runtimeType'] as String?);

Map<String, dynamic> _$LoadingToJson(Loading instance) => <String, dynamic>{
  'runtimeType': instance.$type,
};

Error _$ErrorFromJson(Map<String, dynamic> json) =>
    Error($type: json['runtimeType'] as String?);

Map<String, dynamic> _$ErrorToJson(Error instance) => <String, dynamic>{
  'runtimeType': instance.$type,
};

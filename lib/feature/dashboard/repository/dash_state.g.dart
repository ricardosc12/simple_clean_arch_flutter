// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dash_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DashState _$DashStateFromJson(Map<String, dynamic> json) => _DashState(
  users: IList<User>.fromJson(
    json['users'],
    (value) => User.fromJson(value as Map<String, dynamic>),
  ),
);

Map<String, dynamic> _$DashStateToJson(_DashState instance) =>
    <String, dynamic>{
      'users': instance.users.toJson((value) => value.toJson()),
    };

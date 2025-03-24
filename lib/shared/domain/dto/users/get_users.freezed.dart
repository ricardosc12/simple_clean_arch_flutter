// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_users.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetUsersDto {

 IList<GetUsersItem> get dados; String get mensagem; bool get status; int get total;
/// Create a copy of GetUsersDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetUsersDtoCopyWith<GetUsersDto> get copyWith => _$GetUsersDtoCopyWithImpl<GetUsersDto>(this as GetUsersDto, _$identity);

  /// Serializes this GetUsersDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUsersDto&&const DeepCollectionEquality().equals(other.dados, dados)&&(identical(other.mensagem, mensagem) || other.mensagem == mensagem)&&(identical(other.status, status) || other.status == status)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(dados),mensagem,status,total);

@override
String toString() {
  return 'GetUsersDto(dados: $dados, mensagem: $mensagem, status: $status, total: $total)';
}


}

/// @nodoc
abstract mixin class $GetUsersDtoCopyWith<$Res>  {
  factory $GetUsersDtoCopyWith(GetUsersDto value, $Res Function(GetUsersDto) _then) = _$GetUsersDtoCopyWithImpl;
@useResult
$Res call({
 IList<GetUsersItem> dados, String mensagem, bool status, int total
});




}
/// @nodoc
class _$GetUsersDtoCopyWithImpl<$Res>
    implements $GetUsersDtoCopyWith<$Res> {
  _$GetUsersDtoCopyWithImpl(this._self, this._then);

  final GetUsersDto _self;
  final $Res Function(GetUsersDto) _then;

/// Create a copy of GetUsersDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dados = null,Object? mensagem = null,Object? status = null,Object? total = null,}) {
  return _then(_self.copyWith(
dados: null == dados ? _self.dados : dados // ignore: cast_nullable_to_non_nullable
as IList<GetUsersItem>,mensagem: null == mensagem ? _self.mensagem : mensagem // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GetUsersDto implements GetUsersDto {
   _GetUsersDto({required this.dados, required this.mensagem, required this.status, required this.total});
  factory _GetUsersDto.fromJson(Map<String, dynamic> json) => _$GetUsersDtoFromJson(json);

@override final  IList<GetUsersItem> dados;
@override final  String mensagem;
@override final  bool status;
@override final  int total;

/// Create a copy of GetUsersDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetUsersDtoCopyWith<_GetUsersDto> get copyWith => __$GetUsersDtoCopyWithImpl<_GetUsersDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetUsersDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetUsersDto&&const DeepCollectionEquality().equals(other.dados, dados)&&(identical(other.mensagem, mensagem) || other.mensagem == mensagem)&&(identical(other.status, status) || other.status == status)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(dados),mensagem,status,total);

@override
String toString() {
  return 'GetUsersDto(dados: $dados, mensagem: $mensagem, status: $status, total: $total)';
}


}

/// @nodoc
abstract mixin class _$GetUsersDtoCopyWith<$Res> implements $GetUsersDtoCopyWith<$Res> {
  factory _$GetUsersDtoCopyWith(_GetUsersDto value, $Res Function(_GetUsersDto) _then) = __$GetUsersDtoCopyWithImpl;
@override @useResult
$Res call({
 IList<GetUsersItem> dados, String mensagem, bool status, int total
});




}
/// @nodoc
class __$GetUsersDtoCopyWithImpl<$Res>
    implements _$GetUsersDtoCopyWith<$Res> {
  __$GetUsersDtoCopyWithImpl(this._self, this._then);

  final _GetUsersDto _self;
  final $Res Function(_GetUsersDto) _then;

/// Create a copy of GetUsersDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dados = null,Object? mensagem = null,Object? status = null,Object? total = null,}) {
  return _then(_GetUsersDto(
dados: null == dados ? _self.dados : dados // ignore: cast_nullable_to_non_nullable
as IList<GetUsersItem>,mensagem: null == mensagem ? _self.mensagem : mensagem // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$GetUsersItem {

 String? get cpf; String? get login; GetUsersInfo? get info;
/// Create a copy of GetUsersItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetUsersItemCopyWith<GetUsersItem> get copyWith => _$GetUsersItemCopyWithImpl<GetUsersItem>(this as GetUsersItem, _$identity);

  /// Serializes this GetUsersItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUsersItem&&(identical(other.cpf, cpf) || other.cpf == cpf)&&(identical(other.login, login) || other.login == login)&&(identical(other.info, info) || other.info == info));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cpf,login,info);

@override
String toString() {
  return 'GetUsersItem(cpf: $cpf, login: $login, info: $info)';
}


}

/// @nodoc
abstract mixin class $GetUsersItemCopyWith<$Res>  {
  factory $GetUsersItemCopyWith(GetUsersItem value, $Res Function(GetUsersItem) _then) = _$GetUsersItemCopyWithImpl;
@useResult
$Res call({
 String? cpf, String? login, GetUsersInfo? info
});


$GetUsersInfoCopyWith<$Res>? get info;

}
/// @nodoc
class _$GetUsersItemCopyWithImpl<$Res>
    implements $GetUsersItemCopyWith<$Res> {
  _$GetUsersItemCopyWithImpl(this._self, this._then);

  final GetUsersItem _self;
  final $Res Function(GetUsersItem) _then;

/// Create a copy of GetUsersItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cpf = freezed,Object? login = freezed,Object? info = freezed,}) {
  return _then(_self.copyWith(
cpf: freezed == cpf ? _self.cpf : cpf // ignore: cast_nullable_to_non_nullable
as String?,login: freezed == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String?,info: freezed == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as GetUsersInfo?,
  ));
}
/// Create a copy of GetUsersItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetUsersInfoCopyWith<$Res>? get info {
    if (_self.info == null) {
    return null;
  }

  return $GetUsersInfoCopyWith<$Res>(_self.info!, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _GetUsersItem implements GetUsersItem {
   _GetUsersItem({this.cpf, this.login, this.info});
  factory _GetUsersItem.fromJson(Map<String, dynamic> json) => _$GetUsersItemFromJson(json);

@override final  String? cpf;
@override final  String? login;
@override final  GetUsersInfo? info;

/// Create a copy of GetUsersItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetUsersItemCopyWith<_GetUsersItem> get copyWith => __$GetUsersItemCopyWithImpl<_GetUsersItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetUsersItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetUsersItem&&(identical(other.cpf, cpf) || other.cpf == cpf)&&(identical(other.login, login) || other.login == login)&&(identical(other.info, info) || other.info == info));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cpf,login,info);

@override
String toString() {
  return 'GetUsersItem(cpf: $cpf, login: $login, info: $info)';
}


}

/// @nodoc
abstract mixin class _$GetUsersItemCopyWith<$Res> implements $GetUsersItemCopyWith<$Res> {
  factory _$GetUsersItemCopyWith(_GetUsersItem value, $Res Function(_GetUsersItem) _then) = __$GetUsersItemCopyWithImpl;
@override @useResult
$Res call({
 String? cpf, String? login, GetUsersInfo? info
});


@override $GetUsersInfoCopyWith<$Res>? get info;

}
/// @nodoc
class __$GetUsersItemCopyWithImpl<$Res>
    implements _$GetUsersItemCopyWith<$Res> {
  __$GetUsersItemCopyWithImpl(this._self, this._then);

  final _GetUsersItem _self;
  final $Res Function(_GetUsersItem) _then;

/// Create a copy of GetUsersItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cpf = freezed,Object? login = freezed,Object? info = freezed,}) {
  return _then(_GetUsersItem(
cpf: freezed == cpf ? _self.cpf : cpf // ignore: cast_nullable_to_non_nullable
as String?,login: freezed == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String?,info: freezed == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as GetUsersInfo?,
  ));
}

/// Create a copy of GetUsersItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetUsersInfoCopyWith<$Res>? get info {
    if (_self.info == null) {
    return null;
  }

  return $GetUsersInfoCopyWith<$Res>(_self.info!, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}


/// @nodoc
mixin _$GetUsersInfo {

 String? get nome; String? get grupo_user;
/// Create a copy of GetUsersInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetUsersInfoCopyWith<GetUsersInfo> get copyWith => _$GetUsersInfoCopyWithImpl<GetUsersInfo>(this as GetUsersInfo, _$identity);

  /// Serializes this GetUsersInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUsersInfo&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.grupo_user, grupo_user) || other.grupo_user == grupo_user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nome,grupo_user);

@override
String toString() {
  return 'GetUsersInfo(nome: $nome, grupo_user: $grupo_user)';
}


}

/// @nodoc
abstract mixin class $GetUsersInfoCopyWith<$Res>  {
  factory $GetUsersInfoCopyWith(GetUsersInfo value, $Res Function(GetUsersInfo) _then) = _$GetUsersInfoCopyWithImpl;
@useResult
$Res call({
 String? nome, String? grupo_user
});




}
/// @nodoc
class _$GetUsersInfoCopyWithImpl<$Res>
    implements $GetUsersInfoCopyWith<$Res> {
  _$GetUsersInfoCopyWithImpl(this._self, this._then);

  final GetUsersInfo _self;
  final $Res Function(GetUsersInfo) _then;

/// Create a copy of GetUsersInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nome = freezed,Object? grupo_user = freezed,}) {
  return _then(_self.copyWith(
nome: freezed == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String?,grupo_user: freezed == grupo_user ? _self.grupo_user : grupo_user // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GetUsersInfo implements GetUsersInfo {
   _GetUsersInfo({this.nome, this.grupo_user});
  factory _GetUsersInfo.fromJson(Map<String, dynamic> json) => _$GetUsersInfoFromJson(json);

@override final  String? nome;
@override final  String? grupo_user;

/// Create a copy of GetUsersInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetUsersInfoCopyWith<_GetUsersInfo> get copyWith => __$GetUsersInfoCopyWithImpl<_GetUsersInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetUsersInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetUsersInfo&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.grupo_user, grupo_user) || other.grupo_user == grupo_user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nome,grupo_user);

@override
String toString() {
  return 'GetUsersInfo(nome: $nome, grupo_user: $grupo_user)';
}


}

/// @nodoc
abstract mixin class _$GetUsersInfoCopyWith<$Res> implements $GetUsersInfoCopyWith<$Res> {
  factory _$GetUsersInfoCopyWith(_GetUsersInfo value, $Res Function(_GetUsersInfo) _then) = __$GetUsersInfoCopyWithImpl;
@override @useResult
$Res call({
 String? nome, String? grupo_user
});




}
/// @nodoc
class __$GetUsersInfoCopyWithImpl<$Res>
    implements _$GetUsersInfoCopyWith<$Res> {
  __$GetUsersInfoCopyWithImpl(this._self, this._then);

  final _GetUsersInfo _self;
  final $Res Function(_GetUsersInfo) _then;

/// Create a copy of GetUsersInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nome = freezed,Object? grupo_user = freezed,}) {
  return _then(_GetUsersInfo(
nome: freezed == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String?,grupo_user: freezed == grupo_user ? _self.grupo_user : grupo_user // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

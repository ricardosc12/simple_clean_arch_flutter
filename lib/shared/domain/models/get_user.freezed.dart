// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginResponseDto {

 bool get status; LoginData get dados; String get accessToken; String get mensagem;
/// Create a copy of LoginResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginResponseDtoCopyWith<LoginResponseDto> get copyWith => _$LoginResponseDtoCopyWithImpl<LoginResponseDto>(this as LoginResponseDto, _$identity);

  /// Serializes this LoginResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginResponseDto&&(identical(other.status, status) || other.status == status)&&(identical(other.dados, dados) || other.dados == dados)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.mensagem, mensagem) || other.mensagem == mensagem));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,dados,accessToken,mensagem);

@override
String toString() {
  return 'LoginResponseDto(status: $status, dados: $dados, accessToken: $accessToken, mensagem: $mensagem)';
}


}

/// @nodoc
abstract mixin class $LoginResponseDtoCopyWith<$Res>  {
  factory $LoginResponseDtoCopyWith(LoginResponseDto value, $Res Function(LoginResponseDto) _then) = _$LoginResponseDtoCopyWithImpl;
@useResult
$Res call({
 bool status, LoginData dados, String accessToken, String mensagem
});


$LoginDataCopyWith<$Res> get dados;

}
/// @nodoc
class _$LoginResponseDtoCopyWithImpl<$Res>
    implements $LoginResponseDtoCopyWith<$Res> {
  _$LoginResponseDtoCopyWithImpl(this._self, this._then);

  final LoginResponseDto _self;
  final $Res Function(LoginResponseDto) _then;

/// Create a copy of LoginResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? dados = null,Object? accessToken = null,Object? mensagem = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,dados: null == dados ? _self.dados : dados // ignore: cast_nullable_to_non_nullable
as LoginData,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,mensagem: null == mensagem ? _self.mensagem : mensagem // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of LoginResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginDataCopyWith<$Res> get dados {
  
  return $LoginDataCopyWith<$Res>(_self.dados, (value) {
    return _then(_self.copyWith(dados: value));
  });
}
}


/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _LoginResponseDto implements LoginResponseDto {
  const _LoginResponseDto({required this.status, required this.dados, required this.accessToken, required this.mensagem});
  factory _LoginResponseDto.fromJson(Map<String, dynamic> json) => _$LoginResponseDtoFromJson(json);

@override final  bool status;
@override final  LoginData dados;
@override final  String accessToken;
@override final  String mensagem;

/// Create a copy of LoginResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginResponseDtoCopyWith<_LoginResponseDto> get copyWith => __$LoginResponseDtoCopyWithImpl<_LoginResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginResponseDto&&(identical(other.status, status) || other.status == status)&&(identical(other.dados, dados) || other.dados == dados)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.mensagem, mensagem) || other.mensagem == mensagem));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,dados,accessToken,mensagem);

@override
String toString() {
  return 'LoginResponseDto(status: $status, dados: $dados, accessToken: $accessToken, mensagem: $mensagem)';
}


}

/// @nodoc
abstract mixin class _$LoginResponseDtoCopyWith<$Res> implements $LoginResponseDtoCopyWith<$Res> {
  factory _$LoginResponseDtoCopyWith(_LoginResponseDto value, $Res Function(_LoginResponseDto) _then) = __$LoginResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 bool status, LoginData dados, String accessToken, String mensagem
});


@override $LoginDataCopyWith<$Res> get dados;

}
/// @nodoc
class __$LoginResponseDtoCopyWithImpl<$Res>
    implements _$LoginResponseDtoCopyWith<$Res> {
  __$LoginResponseDtoCopyWithImpl(this._self, this._then);

  final _LoginResponseDto _self;
  final $Res Function(_LoginResponseDto) _then;

/// Create a copy of LoginResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? dados = null,Object? accessToken = null,Object? mensagem = null,}) {
  return _then(_LoginResponseDto(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,dados: null == dados ? _self.dados : dados // ignore: cast_nullable_to_non_nullable
as LoginData,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,mensagem: null == mensagem ? _self.mensagem : mensagem // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of LoginResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginDataCopyWith<$Res> get dados {
  
  return $LoginDataCopyWith<$Res>(_self.dados, (value) {
    return _then(_self.copyWith(dados: value));
  });
}
}


/// @nodoc
mixin _$LoginData {

 LoginDataUser get usuario;
/// Create a copy of LoginData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginDataCopyWith<LoginData> get copyWith => _$LoginDataCopyWithImpl<LoginData>(this as LoginData, _$identity);

  /// Serializes this LoginData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginData&&(identical(other.usuario, usuario) || other.usuario == usuario));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,usuario);

@override
String toString() {
  return 'LoginData(usuario: $usuario)';
}


}

/// @nodoc
abstract mixin class $LoginDataCopyWith<$Res>  {
  factory $LoginDataCopyWith(LoginData value, $Res Function(LoginData) _then) = _$LoginDataCopyWithImpl;
@useResult
$Res call({
 LoginDataUser usuario
});


$LoginDataUserCopyWith<$Res> get usuario;

}
/// @nodoc
class _$LoginDataCopyWithImpl<$Res>
    implements $LoginDataCopyWith<$Res> {
  _$LoginDataCopyWithImpl(this._self, this._then);

  final LoginData _self;
  final $Res Function(LoginData) _then;

/// Create a copy of LoginData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? usuario = null,}) {
  return _then(_self.copyWith(
usuario: null == usuario ? _self.usuario : usuario // ignore: cast_nullable_to_non_nullable
as LoginDataUser,
  ));
}
/// Create a copy of LoginData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginDataUserCopyWith<$Res> get usuario {
  
  return $LoginDataUserCopyWith<$Res>(_self.usuario, (value) {
    return _then(_self.copyWith(usuario: value));
  });
}
}


/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _LoginData implements LoginData {
  const _LoginData({required this.usuario});
  factory _LoginData.fromJson(Map<String, dynamic> json) => _$LoginDataFromJson(json);

@override final  LoginDataUser usuario;

/// Create a copy of LoginData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginDataCopyWith<_LoginData> get copyWith => __$LoginDataCopyWithImpl<_LoginData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginData&&(identical(other.usuario, usuario) || other.usuario == usuario));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,usuario);

@override
String toString() {
  return 'LoginData(usuario: $usuario)';
}


}

/// @nodoc
abstract mixin class _$LoginDataCopyWith<$Res> implements $LoginDataCopyWith<$Res> {
  factory _$LoginDataCopyWith(_LoginData value, $Res Function(_LoginData) _then) = __$LoginDataCopyWithImpl;
@override @useResult
$Res call({
 LoginDataUser usuario
});


@override $LoginDataUserCopyWith<$Res> get usuario;

}
/// @nodoc
class __$LoginDataCopyWithImpl<$Res>
    implements _$LoginDataCopyWith<$Res> {
  __$LoginDataCopyWithImpl(this._self, this._then);

  final _LoginData _self;
  final $Res Function(_LoginData) _then;

/// Create a copy of LoginData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? usuario = null,}) {
  return _then(_LoginData(
usuario: null == usuario ? _self.usuario : usuario // ignore: cast_nullable_to_non_nullable
as LoginDataUser,
  ));
}

/// Create a copy of LoginData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginDataUserCopyWith<$Res> get usuario {
  
  return $LoginDataUserCopyWith<$Res>(_self.usuario, (value) {
    return _then(_self.copyWith(usuario: value));
  });
}
}

LoginDataUser _$LoginDataUserFromJson(
  Map<String, dynamic> json
) {
    return _LogiDatanUser.fromJson(
      json
    );
}

/// @nodoc
mixin _$LoginDataUser {

 String get nome; String get login; String get email; String get grupoAtivo; bool get superUser; String get cpf;
/// Create a copy of LoginDataUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginDataUserCopyWith<LoginDataUser> get copyWith => _$LoginDataUserCopyWithImpl<LoginDataUser>(this as LoginDataUser, _$identity);

  /// Serializes this LoginDataUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginDataUser&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.login, login) || other.login == login)&&(identical(other.email, email) || other.email == email)&&(identical(other.grupoAtivo, grupoAtivo) || other.grupoAtivo == grupoAtivo)&&(identical(other.superUser, superUser) || other.superUser == superUser)&&(identical(other.cpf, cpf) || other.cpf == cpf));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nome,login,email,grupoAtivo,superUser,cpf);

@override
String toString() {
  return 'LoginDataUser(nome: $nome, login: $login, email: $email, grupoAtivo: $grupoAtivo, superUser: $superUser, cpf: $cpf)';
}


}

/// @nodoc
abstract mixin class $LoginDataUserCopyWith<$Res>  {
  factory $LoginDataUserCopyWith(LoginDataUser value, $Res Function(LoginDataUser) _then) = _$LoginDataUserCopyWithImpl;
@useResult
$Res call({
 String nome, String login, String email, String grupoAtivo, bool superUser, String cpf
});




}
/// @nodoc
class _$LoginDataUserCopyWithImpl<$Res>
    implements $LoginDataUserCopyWith<$Res> {
  _$LoginDataUserCopyWithImpl(this._self, this._then);

  final LoginDataUser _self;
  final $Res Function(LoginDataUser) _then;

/// Create a copy of LoginDataUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nome = null,Object? login = null,Object? email = null,Object? grupoAtivo = null,Object? superUser = null,Object? cpf = null,}) {
  return _then(_self.copyWith(
nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,grupoAtivo: null == grupoAtivo ? _self.grupoAtivo : grupoAtivo // ignore: cast_nullable_to_non_nullable
as String,superUser: null == superUser ? _self.superUser : superUser // ignore: cast_nullable_to_non_nullable
as bool,cpf: null == cpf ? _self.cpf : cpf // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _LogiDatanUser implements LoginDataUser {
  const _LogiDatanUser({required this.nome, required this.login, required this.email, required this.grupoAtivo, required this.superUser, required this.cpf});
  factory _LogiDatanUser.fromJson(Map<String, dynamic> json) => _$LogiDatanUserFromJson(json);

@override final  String nome;
@override final  String login;
@override final  String email;
@override final  String grupoAtivo;
@override final  bool superUser;
@override final  String cpf;

/// Create a copy of LoginDataUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LogiDatanUserCopyWith<_LogiDatanUser> get copyWith => __$LogiDatanUserCopyWithImpl<_LogiDatanUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LogiDatanUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogiDatanUser&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.login, login) || other.login == login)&&(identical(other.email, email) || other.email == email)&&(identical(other.grupoAtivo, grupoAtivo) || other.grupoAtivo == grupoAtivo)&&(identical(other.superUser, superUser) || other.superUser == superUser)&&(identical(other.cpf, cpf) || other.cpf == cpf));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nome,login,email,grupoAtivo,superUser,cpf);

@override
String toString() {
  return 'LoginDataUser(nome: $nome, login: $login, email: $email, grupoAtivo: $grupoAtivo, superUser: $superUser, cpf: $cpf)';
}


}

/// @nodoc
abstract mixin class _$LogiDatanUserCopyWith<$Res> implements $LoginDataUserCopyWith<$Res> {
  factory _$LogiDatanUserCopyWith(_LogiDatanUser value, $Res Function(_LogiDatanUser) _then) = __$LogiDatanUserCopyWithImpl;
@override @useResult
$Res call({
 String nome, String login, String email, String grupoAtivo, bool superUser, String cpf
});




}
/// @nodoc
class __$LogiDatanUserCopyWithImpl<$Res>
    implements _$LogiDatanUserCopyWith<$Res> {
  __$LogiDatanUserCopyWithImpl(this._self, this._then);

  final _LogiDatanUser _self;
  final $Res Function(_LogiDatanUser) _then;

/// Create a copy of LoginDataUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nome = null,Object? login = null,Object? email = null,Object? grupoAtivo = null,Object? superUser = null,Object? cpf = null,}) {
  return _then(_LogiDatanUser(
nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,grupoAtivo: null == grupoAtivo ? _self.grupoAtivo : grupoAtivo // ignore: cast_nullable_to_non_nullable
as String,superUser: null == superUser ? _self.superUser : superUser // ignore: cast_nullable_to_non_nullable
as bool,cpf: null == cpf ? _self.cpf : cpf // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RefreshData {

 String get accessToken;
/// Create a copy of RefreshData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefreshDataCopyWith<RefreshData> get copyWith => _$RefreshDataCopyWithImpl<RefreshData>(this as RefreshData, _$identity);

  /// Serializes this RefreshData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshData&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken);

@override
String toString() {
  return 'RefreshData(accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class $RefreshDataCopyWith<$Res>  {
  factory $RefreshDataCopyWith(RefreshData value, $Res Function(RefreshData) _then) = _$RefreshDataCopyWithImpl;
@useResult
$Res call({
 String accessToken
});




}
/// @nodoc
class _$RefreshDataCopyWithImpl<$Res>
    implements $RefreshDataCopyWith<$Res> {
  _$RefreshDataCopyWithImpl(this._self, this._then);

  final RefreshData _self;
  final $Res Function(RefreshData) _then;

/// Create a copy of RefreshData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,}) {
  return _then(_self.copyWith(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _RefreshData implements RefreshData {
   _RefreshData({required this.accessToken});
  factory _RefreshData.fromJson(Map<String, dynamic> json) => _$RefreshDataFromJson(json);

@override final  String accessToken;

/// Create a copy of RefreshData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefreshDataCopyWith<_RefreshData> get copyWith => __$RefreshDataCopyWithImpl<_RefreshData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefreshDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshData&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken);

@override
String toString() {
  return 'RefreshData(accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class _$RefreshDataCopyWith<$Res> implements $RefreshDataCopyWith<$Res> {
  factory _$RefreshDataCopyWith(_RefreshData value, $Res Function(_RefreshData) _then) = __$RefreshDataCopyWithImpl;
@override @useResult
$Res call({
 String accessToken
});




}
/// @nodoc
class __$RefreshDataCopyWithImpl<$Res>
    implements _$RefreshDataCopyWith<$Res> {
  __$RefreshDataCopyWithImpl(this._self, this._then);

  final _RefreshData _self;
  final $Res Function(_RefreshData) _then;

/// Create a copy of RefreshData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,}) {
  return _then(_RefreshData(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

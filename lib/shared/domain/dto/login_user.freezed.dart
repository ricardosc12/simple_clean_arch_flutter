// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginUserDto {

 String get usuario; String get senha;//TODO: Obter dinâmicamente
 String get timezone;
/// Create a copy of LoginUserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginUserDtoCopyWith<LoginUserDto> get copyWith => _$LoginUserDtoCopyWithImpl<LoginUserDto>(this as LoginUserDto, _$identity);

  /// Serializes this LoginUserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginUserDto&&(identical(other.usuario, usuario) || other.usuario == usuario)&&(identical(other.senha, senha) || other.senha == senha)&&(identical(other.timezone, timezone) || other.timezone == timezone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,usuario,senha,timezone);

@override
String toString() {
  return 'LoginUserDto(usuario: $usuario, senha: $senha, timezone: $timezone)';
}


}

/// @nodoc
abstract mixin class $LoginUserDtoCopyWith<$Res>  {
  factory $LoginUserDtoCopyWith(LoginUserDto value, $Res Function(LoginUserDto) _then) = _$LoginUserDtoCopyWithImpl;
@useResult
$Res call({
 String usuario, String senha, String timezone
});




}
/// @nodoc
class _$LoginUserDtoCopyWithImpl<$Res>
    implements $LoginUserDtoCopyWith<$Res> {
  _$LoginUserDtoCopyWithImpl(this._self, this._then);

  final LoginUserDto _self;
  final $Res Function(LoginUserDto) _then;

/// Create a copy of LoginUserDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? usuario = null,Object? senha = null,Object? timezone = null,}) {
  return _then(_self.copyWith(
usuario: null == usuario ? _self.usuario : usuario // ignore: cast_nullable_to_non_nullable
as String,senha: null == senha ? _self.senha : senha // ignore: cast_nullable_to_non_nullable
as String,timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _LoginUserDto implements LoginUserDto {
   _LoginUserDto({required this.usuario, required this.senha, this.timezone = "America/Sao_Paulo"});
  factory _LoginUserDto.fromJson(Map<String, dynamic> json) => _$LoginUserDtoFromJson(json);

@override final  String usuario;
@override final  String senha;
//TODO: Obter dinâmicamente
@override@JsonKey() final  String timezone;

/// Create a copy of LoginUserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginUserDtoCopyWith<_LoginUserDto> get copyWith => __$LoginUserDtoCopyWithImpl<_LoginUserDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginUserDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginUserDto&&(identical(other.usuario, usuario) || other.usuario == usuario)&&(identical(other.senha, senha) || other.senha == senha)&&(identical(other.timezone, timezone) || other.timezone == timezone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,usuario,senha,timezone);

@override
String toString() {
  return 'LoginUserDto(usuario: $usuario, senha: $senha, timezone: $timezone)';
}


}

/// @nodoc
abstract mixin class _$LoginUserDtoCopyWith<$Res> implements $LoginUserDtoCopyWith<$Res> {
  factory _$LoginUserDtoCopyWith(_LoginUserDto value, $Res Function(_LoginUserDto) _then) = __$LoginUserDtoCopyWithImpl;
@override @useResult
$Res call({
 String usuario, String senha, String timezone
});




}
/// @nodoc
class __$LoginUserDtoCopyWithImpl<$Res>
    implements _$LoginUserDtoCopyWith<$Res> {
  __$LoginUserDtoCopyWithImpl(this._self, this._then);

  final _LoginUserDto _self;
  final $Res Function(_LoginUserDto) _then;

/// Create a copy of LoginUserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? usuario = null,Object? senha = null,Object? timezone = null,}) {
  return _then(_LoginUserDto(
usuario: null == usuario ? _self.usuario : usuario // ignore: cast_nullable_to_non_nullable
as String,senha: null == senha ? _self.senha : senha // ignore: cast_nullable_to_non_nullable
as String,timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

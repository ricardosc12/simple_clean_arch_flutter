// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'incidente.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateIncidenteDto {

 IncidenteSituacao get situacao; String get nomeRelator; String get email; String get telefone; String get resumo; DateTime get data;
/// Create a copy of CreateIncidenteDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateIncidenteDtoCopyWith<CreateIncidenteDto> get copyWith => _$CreateIncidenteDtoCopyWithImpl<CreateIncidenteDto>(this as CreateIncidenteDto, _$identity);

  /// Serializes this CreateIncidenteDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateIncidenteDto&&(identical(other.situacao, situacao) || other.situacao == situacao)&&(identical(other.nomeRelator, nomeRelator) || other.nomeRelator == nomeRelator)&&(identical(other.email, email) || other.email == email)&&(identical(other.telefone, telefone) || other.telefone == telefone)&&(identical(other.resumo, resumo) || other.resumo == resumo)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,situacao,nomeRelator,email,telefone,resumo,data);

@override
String toString() {
  return 'CreateIncidenteDto(situacao: $situacao, nomeRelator: $nomeRelator, email: $email, telefone: $telefone, resumo: $resumo, data: $data)';
}


}

/// @nodoc
abstract mixin class $CreateIncidenteDtoCopyWith<$Res>  {
  factory $CreateIncidenteDtoCopyWith(CreateIncidenteDto value, $Res Function(CreateIncidenteDto) _then) = _$CreateIncidenteDtoCopyWithImpl;
@useResult
$Res call({
 IncidenteSituacao situacao, String nomeRelator, String email, String telefone, String resumo, DateTime data
});




}
/// @nodoc
class _$CreateIncidenteDtoCopyWithImpl<$Res>
    implements $CreateIncidenteDtoCopyWith<$Res> {
  _$CreateIncidenteDtoCopyWithImpl(this._self, this._then);

  final CreateIncidenteDto _self;
  final $Res Function(CreateIncidenteDto) _then;

/// Create a copy of CreateIncidenteDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? situacao = null,Object? nomeRelator = null,Object? email = null,Object? telefone = null,Object? resumo = null,Object? data = null,}) {
  return _then(_self.copyWith(
situacao: null == situacao ? _self.situacao : situacao // ignore: cast_nullable_to_non_nullable
as IncidenteSituacao,nomeRelator: null == nomeRelator ? _self.nomeRelator : nomeRelator // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,telefone: null == telefone ? _self.telefone : telefone // ignore: cast_nullable_to_non_nullable
as String,resumo: null == resumo ? _self.resumo : resumo // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()
class _CreateIncidenteDto implements CreateIncidenteDto {
   _CreateIncidenteDto({required this.situacao, required this.nomeRelator, required this.email, required this.telefone, required this.resumo, required this.data});
  factory _CreateIncidenteDto.fromJson(Map<String, dynamic> json) => _$CreateIncidenteDtoFromJson(json);

@override final  IncidenteSituacao situacao;
@override final  String nomeRelator;
@override final  String email;
@override final  String telefone;
@override final  String resumo;
@override final  DateTime data;

/// Create a copy of CreateIncidenteDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateIncidenteDtoCopyWith<_CreateIncidenteDto> get copyWith => __$CreateIncidenteDtoCopyWithImpl<_CreateIncidenteDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateIncidenteDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateIncidenteDto&&(identical(other.situacao, situacao) || other.situacao == situacao)&&(identical(other.nomeRelator, nomeRelator) || other.nomeRelator == nomeRelator)&&(identical(other.email, email) || other.email == email)&&(identical(other.telefone, telefone) || other.telefone == telefone)&&(identical(other.resumo, resumo) || other.resumo == resumo)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,situacao,nomeRelator,email,telefone,resumo,data);

@override
String toString() {
  return 'CreateIncidenteDto(situacao: $situacao, nomeRelator: $nomeRelator, email: $email, telefone: $telefone, resumo: $resumo, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CreateIncidenteDtoCopyWith<$Res> implements $CreateIncidenteDtoCopyWith<$Res> {
  factory _$CreateIncidenteDtoCopyWith(_CreateIncidenteDto value, $Res Function(_CreateIncidenteDto) _then) = __$CreateIncidenteDtoCopyWithImpl;
@override @useResult
$Res call({
 IncidenteSituacao situacao, String nomeRelator, String email, String telefone, String resumo, DateTime data
});




}
/// @nodoc
class __$CreateIncidenteDtoCopyWithImpl<$Res>
    implements _$CreateIncidenteDtoCopyWith<$Res> {
  __$CreateIncidenteDtoCopyWithImpl(this._self, this._then);

  final _CreateIncidenteDto _self;
  final $Res Function(_CreateIncidenteDto) _then;

/// Create a copy of CreateIncidenteDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? situacao = null,Object? nomeRelator = null,Object? email = null,Object? telefone = null,Object? resumo = null,Object? data = null,}) {
  return _then(_CreateIncidenteDto(
situacao: null == situacao ? _self.situacao : situacao // ignore: cast_nullable_to_non_nullable
as IncidenteSituacao,nomeRelator: null == nomeRelator ? _self.nomeRelator : nomeRelator // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,telefone: null == telefone ? _self.telefone : telefone // ignore: cast_nullable_to_non_nullable
as String,resumo: null == resumo ? _self.resumo : resumo // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on

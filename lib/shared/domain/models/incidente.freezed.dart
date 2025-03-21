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
mixin _$Incidente {

 String get id; String get nomeRelator; String get email; String get telefone; IncidenteSituacao get situacao; String get resumo;
/// Create a copy of Incidente
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IncidenteCopyWith<Incidente> get copyWith => _$IncidenteCopyWithImpl<Incidente>(this as Incidente, _$identity);

  /// Serializes this Incidente to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Incidente&&(identical(other.id, id) || other.id == id)&&(identical(other.nomeRelator, nomeRelator) || other.nomeRelator == nomeRelator)&&(identical(other.email, email) || other.email == email)&&(identical(other.telefone, telefone) || other.telefone == telefone)&&(identical(other.situacao, situacao) || other.situacao == situacao)&&(identical(other.resumo, resumo) || other.resumo == resumo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nomeRelator,email,telefone,situacao,resumo);

@override
String toString() {
  return 'Incidente(id: $id, nomeRelator: $nomeRelator, email: $email, telefone: $telefone, situacao: $situacao, resumo: $resumo)';
}


}

/// @nodoc
abstract mixin class $IncidenteCopyWith<$Res>  {
  factory $IncidenteCopyWith(Incidente value, $Res Function(Incidente) _then) = _$IncidenteCopyWithImpl;
@useResult
$Res call({
 String id, String nomeRelator, String email, String telefone, IncidenteSituacao situacao, String resumo
});




}
/// @nodoc
class _$IncidenteCopyWithImpl<$Res>
    implements $IncidenteCopyWith<$Res> {
  _$IncidenteCopyWithImpl(this._self, this._then);

  final Incidente _self;
  final $Res Function(Incidente) _then;

/// Create a copy of Incidente
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nomeRelator = null,Object? email = null,Object? telefone = null,Object? situacao = null,Object? resumo = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nomeRelator: null == nomeRelator ? _self.nomeRelator : nomeRelator // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,telefone: null == telefone ? _self.telefone : telefone // ignore: cast_nullable_to_non_nullable
as String,situacao: null == situacao ? _self.situacao : situacao // ignore: cast_nullable_to_non_nullable
as IncidenteSituacao,resumo: null == resumo ? _self.resumo : resumo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Incidente implements Incidente {
  const _Incidente({required this.id, required this.nomeRelator, required this.email, required this.telefone, required this.situacao, required this.resumo});
  factory _Incidente.fromJson(Map<String, dynamic> json) => _$IncidenteFromJson(json);

@override final  String id;
@override final  String nomeRelator;
@override final  String email;
@override final  String telefone;
@override final  IncidenteSituacao situacao;
@override final  String resumo;

/// Create a copy of Incidente
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IncidenteCopyWith<_Incidente> get copyWith => __$IncidenteCopyWithImpl<_Incidente>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IncidenteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Incidente&&(identical(other.id, id) || other.id == id)&&(identical(other.nomeRelator, nomeRelator) || other.nomeRelator == nomeRelator)&&(identical(other.email, email) || other.email == email)&&(identical(other.telefone, telefone) || other.telefone == telefone)&&(identical(other.situacao, situacao) || other.situacao == situacao)&&(identical(other.resumo, resumo) || other.resumo == resumo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nomeRelator,email,telefone,situacao,resumo);

@override
String toString() {
  return 'Incidente(id: $id, nomeRelator: $nomeRelator, email: $email, telefone: $telefone, situacao: $situacao, resumo: $resumo)';
}


}

/// @nodoc
abstract mixin class _$IncidenteCopyWith<$Res> implements $IncidenteCopyWith<$Res> {
  factory _$IncidenteCopyWith(_Incidente value, $Res Function(_Incidente) _then) = __$IncidenteCopyWithImpl;
@override @useResult
$Res call({
 String id, String nomeRelator, String email, String telefone, IncidenteSituacao situacao, String resumo
});




}
/// @nodoc
class __$IncidenteCopyWithImpl<$Res>
    implements _$IncidenteCopyWith<$Res> {
  __$IncidenteCopyWithImpl(this._self, this._then);

  final _Incidente _self;
  final $Res Function(_Incidente) _then;

/// Create a copy of Incidente
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nomeRelator = null,Object? email = null,Object? telefone = null,Object? situacao = null,Object? resumo = null,}) {
  return _then(_Incidente(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nomeRelator: null == nomeRelator ? _self.nomeRelator : nomeRelator // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,telefone: null == telefone ? _self.telefone : telefone // ignore: cast_nullable_to_non_nullable
as String,situacao: null == situacao ? _self.situacao : situacao // ignore: cast_nullable_to_non_nullable
as IncidenteSituacao,resumo: null == resumo ? _self.resumo : resumo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

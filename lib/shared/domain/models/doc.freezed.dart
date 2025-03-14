// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Doc {

 String get ar; String get chave; String get numero; DocStatus get status; Romaneio get romaneio; String get destinatario; String get remetente; int? get volumes;
/// Create a copy of Doc
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocCopyWith<Doc> get copyWith => _$DocCopyWithImpl<Doc>(this as Doc, _$identity);

  /// Serializes this Doc to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Doc&&(identical(other.ar, ar) || other.ar == ar)&&(identical(other.chave, chave) || other.chave == chave)&&(identical(other.numero, numero) || other.numero == numero)&&(identical(other.status, status) || other.status == status)&&(identical(other.romaneio, romaneio) || other.romaneio == romaneio)&&(identical(other.destinatario, destinatario) || other.destinatario == destinatario)&&(identical(other.remetente, remetente) || other.remetente == remetente)&&(identical(other.volumes, volumes) || other.volumes == volumes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ar,chave,numero,status,romaneio,destinatario,remetente,volumes);

@override
String toString() {
  return 'Doc(ar: $ar, chave: $chave, numero: $numero, status: $status, romaneio: $romaneio, destinatario: $destinatario, remetente: $remetente, volumes: $volumes)';
}


}

/// @nodoc
abstract mixin class $DocCopyWith<$Res>  {
  factory $DocCopyWith(Doc value, $Res Function(Doc) _then) = _$DocCopyWithImpl;
@useResult
$Res call({
 String ar, String chave, String numero, DocStatus status, Romaneio romaneio, String destinatario, String remetente, int? volumes
});




}
/// @nodoc
class _$DocCopyWithImpl<$Res>
    implements $DocCopyWith<$Res> {
  _$DocCopyWithImpl(this._self, this._then);

  final Doc _self;
  final $Res Function(Doc) _then;

/// Create a copy of Doc
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ar = null,Object? chave = null,Object? numero = null,Object? status = null,Object? romaneio = null,Object? destinatario = null,Object? remetente = null,Object? volumes = freezed,}) {
  return _then(_self.copyWith(
ar: null == ar ? _self.ar : ar // ignore: cast_nullable_to_non_nullable
as String,chave: null == chave ? _self.chave : chave // ignore: cast_nullable_to_non_nullable
as String,numero: null == numero ? _self.numero : numero // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DocStatus,romaneio: null == romaneio ? _self.romaneio : romaneio // ignore: cast_nullable_to_non_nullable
as Romaneio,destinatario: null == destinatario ? _self.destinatario : destinatario // ignore: cast_nullable_to_non_nullable
as String,remetente: null == remetente ? _self.remetente : remetente // ignore: cast_nullable_to_non_nullable
as String,volumes: freezed == volumes ? _self.volumes : volumes // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Doc implements Doc {
  const _Doc({required this.ar, required this.chave, required this.numero, required this.status, required this.romaneio, required this.destinatario, required this.remetente, this.volumes});
  factory _Doc.fromJson(Map<String, dynamic> json) => _$DocFromJson(json);

@override final  String ar;
@override final  String chave;
@override final  String numero;
@override final  DocStatus status;
@override final  Romaneio romaneio;
@override final  String destinatario;
@override final  String remetente;
@override final  int? volumes;

/// Create a copy of Doc
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocCopyWith<_Doc> get copyWith => __$DocCopyWithImpl<_Doc>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Doc&&(identical(other.ar, ar) || other.ar == ar)&&(identical(other.chave, chave) || other.chave == chave)&&(identical(other.numero, numero) || other.numero == numero)&&(identical(other.status, status) || other.status == status)&&(identical(other.romaneio, romaneio) || other.romaneio == romaneio)&&(identical(other.destinatario, destinatario) || other.destinatario == destinatario)&&(identical(other.remetente, remetente) || other.remetente == remetente)&&(identical(other.volumes, volumes) || other.volumes == volumes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ar,chave,numero,status,romaneio,destinatario,remetente,volumes);

@override
String toString() {
  return 'Doc(ar: $ar, chave: $chave, numero: $numero, status: $status, romaneio: $romaneio, destinatario: $destinatario, remetente: $remetente, volumes: $volumes)';
}


}

/// @nodoc
abstract mixin class _$DocCopyWith<$Res> implements $DocCopyWith<$Res> {
  factory _$DocCopyWith(_Doc value, $Res Function(_Doc) _then) = __$DocCopyWithImpl;
@override @useResult
$Res call({
 String ar, String chave, String numero, DocStatus status, Romaneio romaneio, String destinatario, String remetente, int? volumes
});




}
/// @nodoc
class __$DocCopyWithImpl<$Res>
    implements _$DocCopyWith<$Res> {
  __$DocCopyWithImpl(this._self, this._then);

  final _Doc _self;
  final $Res Function(_Doc) _then;

/// Create a copy of Doc
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ar = null,Object? chave = null,Object? numero = null,Object? status = null,Object? romaneio = null,Object? destinatario = null,Object? remetente = null,Object? volumes = freezed,}) {
  return _then(_Doc(
ar: null == ar ? _self.ar : ar // ignore: cast_nullable_to_non_nullable
as String,chave: null == chave ? _self.chave : chave // ignore: cast_nullable_to_non_nullable
as String,numero: null == numero ? _self.numero : numero // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DocStatus,romaneio: null == romaneio ? _self.romaneio : romaneio // ignore: cast_nullable_to_non_nullable
as Romaneio,destinatario: null == destinatario ? _self.destinatario : destinatario // ignore: cast_nullable_to_non_nullable
as String,remetente: null == remetente ? _self.remetente : remetente // ignore: cast_nullable_to_non_nullable
as String,volumes: freezed == volumes ? _self.volumes : volumes // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on

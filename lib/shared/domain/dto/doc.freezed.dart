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
mixin _$CreateDocDto {

 DocStatus get status; String get destinatario; String get remetente;
/// Create a copy of CreateDocDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateDocDtoCopyWith<CreateDocDto> get copyWith => _$CreateDocDtoCopyWithImpl<CreateDocDto>(this as CreateDocDto, _$identity);

  /// Serializes this CreateDocDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDocDto&&(identical(other.status, status) || other.status == status)&&(identical(other.destinatario, destinatario) || other.destinatario == destinatario)&&(identical(other.remetente, remetente) || other.remetente == remetente));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,destinatario,remetente);

@override
String toString() {
  return 'CreateDocDto(status: $status, destinatario: $destinatario, remetente: $remetente)';
}


}

/// @nodoc
abstract mixin class $CreateDocDtoCopyWith<$Res>  {
  factory $CreateDocDtoCopyWith(CreateDocDto value, $Res Function(CreateDocDto) _then) = _$CreateDocDtoCopyWithImpl;
@useResult
$Res call({
 DocStatus status, String destinatario, String remetente
});




}
/// @nodoc
class _$CreateDocDtoCopyWithImpl<$Res>
    implements $CreateDocDtoCopyWith<$Res> {
  _$CreateDocDtoCopyWithImpl(this._self, this._then);

  final CreateDocDto _self;
  final $Res Function(CreateDocDto) _then;

/// Create a copy of CreateDocDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? destinatario = null,Object? remetente = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DocStatus,destinatario: null == destinatario ? _self.destinatario : destinatario // ignore: cast_nullable_to_non_nullable
as String,remetente: null == remetente ? _self.remetente : remetente // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CreateDocDto implements CreateDocDto {
   _CreateDocDto({required this.status, required this.destinatario, required this.remetente});
  factory _CreateDocDto.fromJson(Map<String, dynamic> json) => _$CreateDocDtoFromJson(json);

@override final  DocStatus status;
@override final  String destinatario;
@override final  String remetente;

/// Create a copy of CreateDocDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateDocDtoCopyWith<_CreateDocDto> get copyWith => __$CreateDocDtoCopyWithImpl<_CreateDocDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateDocDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateDocDto&&(identical(other.status, status) || other.status == status)&&(identical(other.destinatario, destinatario) || other.destinatario == destinatario)&&(identical(other.remetente, remetente) || other.remetente == remetente));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,destinatario,remetente);

@override
String toString() {
  return 'CreateDocDto(status: $status, destinatario: $destinatario, remetente: $remetente)';
}


}

/// @nodoc
abstract mixin class _$CreateDocDtoCopyWith<$Res> implements $CreateDocDtoCopyWith<$Res> {
  factory _$CreateDocDtoCopyWith(_CreateDocDto value, $Res Function(_CreateDocDto) _then) = __$CreateDocDtoCopyWithImpl;
@override @useResult
$Res call({
 DocStatus status, String destinatario, String remetente
});




}
/// @nodoc
class __$CreateDocDtoCopyWithImpl<$Res>
    implements _$CreateDocDtoCopyWith<$Res> {
  __$CreateDocDtoCopyWithImpl(this._self, this._then);

  final _CreateDocDto _self;
  final $Res Function(_CreateDocDto) _then;

/// Create a copy of CreateDocDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? destinatario = null,Object? remetente = null,}) {
  return _then(_CreateDocDto(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DocStatus,destinatario: null == destinatario ? _self.destinatario : destinatario // ignore: cast_nullable_to_non_nullable
as String,remetente: null == remetente ? _self.remetente : remetente // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

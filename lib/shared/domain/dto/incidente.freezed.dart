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
mixin _$IncidenteFormDto {

 String get arg1; int get arg2; DateTime get arg3;
/// Create a copy of IncidenteFormDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IncidenteFormDtoCopyWith<IncidenteFormDto> get copyWith => _$IncidenteFormDtoCopyWithImpl<IncidenteFormDto>(this as IncidenteFormDto, _$identity);

  /// Serializes this IncidenteFormDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IncidenteFormDto&&(identical(other.arg1, arg1) || other.arg1 == arg1)&&(identical(other.arg2, arg2) || other.arg2 == arg2)&&(identical(other.arg3, arg3) || other.arg3 == arg3));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,arg1,arg2,arg3);

@override
String toString() {
  return 'IncidenteFormDto(arg1: $arg1, arg2: $arg2, arg3: $arg3)';
}


}

/// @nodoc
abstract mixin class $IncidenteFormDtoCopyWith<$Res>  {
  factory $IncidenteFormDtoCopyWith(IncidenteFormDto value, $Res Function(IncidenteFormDto) _then) = _$IncidenteFormDtoCopyWithImpl;
@useResult
$Res call({
 String arg1, int arg2, DateTime arg3
});




}
/// @nodoc
class _$IncidenteFormDtoCopyWithImpl<$Res>
    implements $IncidenteFormDtoCopyWith<$Res> {
  _$IncidenteFormDtoCopyWithImpl(this._self, this._then);

  final IncidenteFormDto _self;
  final $Res Function(IncidenteFormDto) _then;

/// Create a copy of IncidenteFormDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? arg1 = null,Object? arg2 = null,Object? arg3 = null,}) {
  return _then(_self.copyWith(
arg1: null == arg1 ? _self.arg1 : arg1 // ignore: cast_nullable_to_non_nullable
as String,arg2: null == arg2 ? _self.arg2 : arg2 // ignore: cast_nullable_to_non_nullable
as int,arg3: null == arg3 ? _self.arg3 : arg3 // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _IncidenteFormDto implements IncidenteFormDto {
   _IncidenteFormDto({required this.arg1, required this.arg2, required this.arg3});
  factory _IncidenteFormDto.fromJson(Map<String, dynamic> json) => _$IncidenteFormDtoFromJson(json);

@override final  String arg1;
@override final  int arg2;
@override final  DateTime arg3;

/// Create a copy of IncidenteFormDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IncidenteFormDtoCopyWith<_IncidenteFormDto> get copyWith => __$IncidenteFormDtoCopyWithImpl<_IncidenteFormDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IncidenteFormDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IncidenteFormDto&&(identical(other.arg1, arg1) || other.arg1 == arg1)&&(identical(other.arg2, arg2) || other.arg2 == arg2)&&(identical(other.arg3, arg3) || other.arg3 == arg3));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,arg1,arg2,arg3);

@override
String toString() {
  return 'IncidenteFormDto(arg1: $arg1, arg2: $arg2, arg3: $arg3)';
}


}

/// @nodoc
abstract mixin class _$IncidenteFormDtoCopyWith<$Res> implements $IncidenteFormDtoCopyWith<$Res> {
  factory _$IncidenteFormDtoCopyWith(_IncidenteFormDto value, $Res Function(_IncidenteFormDto) _then) = __$IncidenteFormDtoCopyWithImpl;
@override @useResult
$Res call({
 String arg1, int arg2, DateTime arg3
});




}
/// @nodoc
class __$IncidenteFormDtoCopyWithImpl<$Res>
    implements _$IncidenteFormDtoCopyWith<$Res> {
  __$IncidenteFormDtoCopyWithImpl(this._self, this._then);

  final _IncidenteFormDto _self;
  final $Res Function(_IncidenteFormDto) _then;

/// Create a copy of IncidenteFormDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? arg1 = null,Object? arg2 = null,Object? arg3 = null,}) {
  return _then(_IncidenteFormDto(
arg1: null == arg1 ? _self.arg1 : arg1 // ignore: cast_nullable_to_non_nullable
as String,arg2: null == arg2 ? _self.arg2 : arg2 // ignore: cast_nullable_to_non_nullable
as int,arg3: null == arg3 ? _self.arg3 : arg3 // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on

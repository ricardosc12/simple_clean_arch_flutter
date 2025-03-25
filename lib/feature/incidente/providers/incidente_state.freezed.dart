// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'incidente_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IncidenteState {

 IList<Incidente> get incidentes; IncidenteStatus get status;
/// Create a copy of IncidenteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IncidenteStateCopyWith<IncidenteState> get copyWith => _$IncidenteStateCopyWithImpl<IncidenteState>(this as IncidenteState, _$identity);

  /// Serializes this IncidenteState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IncidenteState&&const DeepCollectionEquality().equals(other.incidentes, incidentes)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(incidentes),status);

@override
String toString() {
  return 'IncidenteState(incidentes: $incidentes, status: $status)';
}


}

/// @nodoc
abstract mixin class $IncidenteStateCopyWith<$Res>  {
  factory $IncidenteStateCopyWith(IncidenteState value, $Res Function(IncidenteState) _then) = _$IncidenteStateCopyWithImpl;
@useResult
$Res call({
 IList<Incidente> incidentes, IncidenteStatus status
});




}
/// @nodoc
class _$IncidenteStateCopyWithImpl<$Res>
    implements $IncidenteStateCopyWith<$Res> {
  _$IncidenteStateCopyWithImpl(this._self, this._then);

  final IncidenteState _self;
  final $Res Function(IncidenteState) _then;

/// Create a copy of IncidenteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? incidentes = null,Object? status = null,}) {
  return _then(_self.copyWith(
incidentes: null == incidentes ? _self.incidentes : incidentes // ignore: cast_nullable_to_non_nullable
as IList<Incidente>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as IncidenteStatus,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _IncidenteState implements IncidenteState {
  const _IncidenteState({this.incidentes = const IList.empty(), required this.status});
  factory _IncidenteState.fromJson(Map<String, dynamic> json) => _$IncidenteStateFromJson(json);

@override@JsonKey() final  IList<Incidente> incidentes;
@override final  IncidenteStatus status;

/// Create a copy of IncidenteState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IncidenteStateCopyWith<_IncidenteState> get copyWith => __$IncidenteStateCopyWithImpl<_IncidenteState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IncidenteStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IncidenteState&&const DeepCollectionEquality().equals(other.incidentes, incidentes)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(incidentes),status);

@override
String toString() {
  return 'IncidenteState(incidentes: $incidentes, status: $status)';
}


}

/// @nodoc
abstract mixin class _$IncidenteStateCopyWith<$Res> implements $IncidenteStateCopyWith<$Res> {
  factory _$IncidenteStateCopyWith(_IncidenteState value, $Res Function(_IncidenteState) _then) = __$IncidenteStateCopyWithImpl;
@override @useResult
$Res call({
 IList<Incidente> incidentes, IncidenteStatus status
});




}
/// @nodoc
class __$IncidenteStateCopyWithImpl<$Res>
    implements _$IncidenteStateCopyWith<$Res> {
  __$IncidenteStateCopyWithImpl(this._self, this._then);

  final _IncidenteState _self;
  final $Res Function(_IncidenteState) _then;

/// Create a copy of IncidenteState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? incidentes = null,Object? status = null,}) {
  return _then(_IncidenteState(
incidentes: null == incidentes ? _self.incidentes : incidentes // ignore: cast_nullable_to_non_nullable
as IList<Incidente>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as IncidenteStatus,
  ));
}


}

// dart format on

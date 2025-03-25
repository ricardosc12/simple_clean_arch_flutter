// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dash_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashState {

 IList<User> get users;
/// Create a copy of DashState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashStateCopyWith<DashState> get copyWith => _$DashStateCopyWithImpl<DashState>(this as DashState, _$identity);

  /// Serializes this DashState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashState&&const DeepCollectionEquality().equals(other.users, users));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(users));

@override
String toString() {
  return 'DashState(users: $users)';
}


}

/// @nodoc
abstract mixin class $DashStateCopyWith<$Res>  {
  factory $DashStateCopyWith(DashState value, $Res Function(DashState) _then) = _$DashStateCopyWithImpl;
@useResult
$Res call({
 IList<User> users
});




}
/// @nodoc
class _$DashStateCopyWithImpl<$Res>
    implements $DashStateCopyWith<$Res> {
  _$DashStateCopyWithImpl(this._self, this._then);

  final DashState _self;
  final $Res Function(DashState) _then;

/// Create a copy of DashState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? users = null,}) {
  return _then(_self.copyWith(
users: null == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as IList<User>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DashState implements DashState {
  const _DashState({required this.users});
  factory _DashState.fromJson(Map<String, dynamic> json) => _$DashStateFromJson(json);

@override final  IList<User> users;

/// Create a copy of DashState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashStateCopyWith<_DashState> get copyWith => __$DashStateCopyWithImpl<_DashState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashState&&const DeepCollectionEquality().equals(other.users, users));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(users));

@override
String toString() {
  return 'DashState(users: $users)';
}


}

/// @nodoc
abstract mixin class _$DashStateCopyWith<$Res> implements $DashStateCopyWith<$Res> {
  factory _$DashStateCopyWith(_DashState value, $Res Function(_DashState) _then) = __$DashStateCopyWithImpl;
@override @useResult
$Res call({
 IList<User> users
});




}
/// @nodoc
class __$DashStateCopyWithImpl<$Res>
    implements _$DashStateCopyWith<$Res> {
  __$DashStateCopyWithImpl(this._self, this._then);

  final _DashState _self;
  final $Res Function(_DashState) _then;

/// Create a copy of DashState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? users = null,}) {
  return _then(_DashState(
users: null == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as IList<User>,
  ));
}


}

// dart format on

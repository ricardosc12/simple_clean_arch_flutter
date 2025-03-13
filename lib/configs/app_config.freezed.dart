// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppConfigState {

 String get baseUrl;
/// Create a copy of AppConfigState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppConfigStateCopyWith<AppConfigState> get copyWith => _$AppConfigStateCopyWithImpl<AppConfigState>(this as AppConfigState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppConfigState&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl));
}


@override
int get hashCode => Object.hash(runtimeType,baseUrl);

@override
String toString() {
  return 'AppConfigState(baseUrl: $baseUrl)';
}


}

/// @nodoc
abstract mixin class $AppConfigStateCopyWith<$Res>  {
  factory $AppConfigStateCopyWith(AppConfigState value, $Res Function(AppConfigState) _then) = _$AppConfigStateCopyWithImpl;
@useResult
$Res call({
 String baseUrl
});




}
/// @nodoc
class _$AppConfigStateCopyWithImpl<$Res>
    implements $AppConfigStateCopyWith<$Res> {
  _$AppConfigStateCopyWithImpl(this._self, this._then);

  final AppConfigState _self;
  final $Res Function(AppConfigState) _then;

/// Create a copy of AppConfigState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? baseUrl = null,}) {
  return _then(_self.copyWith(
baseUrl: null == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _AppConfigState implements AppConfigState {
  const _AppConfigState({required this.baseUrl});
  

@override final  String baseUrl;

/// Create a copy of AppConfigState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppConfigStateCopyWith<_AppConfigState> get copyWith => __$AppConfigStateCopyWithImpl<_AppConfigState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppConfigState&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl));
}


@override
int get hashCode => Object.hash(runtimeType,baseUrl);

@override
String toString() {
  return 'AppConfigState(baseUrl: $baseUrl)';
}


}

/// @nodoc
abstract mixin class _$AppConfigStateCopyWith<$Res> implements $AppConfigStateCopyWith<$Res> {
  factory _$AppConfigStateCopyWith(_AppConfigState value, $Res Function(_AppConfigState) _then) = __$AppConfigStateCopyWithImpl;
@override @useResult
$Res call({
 String baseUrl
});




}
/// @nodoc
class __$AppConfigStateCopyWithImpl<$Res>
    implements _$AppConfigStateCopyWith<$Res> {
  __$AppConfigStateCopyWithImpl(this._self, this._then);

  final _AppConfigState _self;
  final $Res Function(_AppConfigState) _then;

/// Create a copy of AppConfigState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseUrl = null,}) {
  return _then(_AppConfigState(
baseUrl: null == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

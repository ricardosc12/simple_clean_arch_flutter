// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
AuthState _$AuthStateFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'init':
          return Init.fromJson(
            json
          );
                case 'logged':
          return Logged.fromJson(
            json
          );
                case 'refreshed':
          return Refreshed.fromJson(
            json
          );
                case 'loading':
          return Loading.fromJson(
            json
          );
                case 'error':
          return Error.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'AuthState',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$AuthState {



  /// Serializes this AuthState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// @nodoc
@JsonSerializable()

class Init implements AuthState {
  const Init({final  String? $type}): $type = $type ?? 'init';
  factory Init.fromJson(Map<String, dynamic> json) => _$InitFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$InitToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Init);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.init()';
}


}




/// @nodoc
@JsonSerializable()

class Logged implements AuthState {
  const Logged({required this.user, final  String? $type}): $type = $type ?? 'logged';
  factory Logged.fromJson(Map<String, dynamic> json) => _$LoggedFromJson(json);

 final  Usuario user;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoggedCopyWith<Logged> get copyWith => _$LoggedCopyWithImpl<Logged>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoggedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Logged&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AuthState.logged(user: $user)';
}


}

/// @nodoc
abstract mixin class $LoggedCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $LoggedCopyWith(Logged value, $Res Function(Logged) _then) = _$LoggedCopyWithImpl;
@useResult
$Res call({
 Usuario user
});


$UsuarioCopyWith<$Res> get user;

}
/// @nodoc
class _$LoggedCopyWithImpl<$Res>
    implements $LoggedCopyWith<$Res> {
  _$LoggedCopyWithImpl(this._self, this._then);

  final Logged _self;
  final $Res Function(Logged) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(Logged(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as Usuario,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UsuarioCopyWith<$Res> get user {
  
  return $UsuarioCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class Refreshed implements AuthState {
  const Refreshed({required this.refreshData, final  String? $type}): $type = $type ?? 'refreshed';
  factory Refreshed.fromJson(Map<String, dynamic> json) => _$RefreshedFromJson(json);

 final  RefreshData refreshData;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefreshedCopyWith<Refreshed> get copyWith => _$RefreshedCopyWithImpl<Refreshed>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefreshedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Refreshed&&(identical(other.refreshData, refreshData) || other.refreshData == refreshData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,refreshData);

@override
String toString() {
  return 'AuthState.refreshed(refreshData: $refreshData)';
}


}

/// @nodoc
abstract mixin class $RefreshedCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $RefreshedCopyWith(Refreshed value, $Res Function(Refreshed) _then) = _$RefreshedCopyWithImpl;
@useResult
$Res call({
 RefreshData refreshData
});


$RefreshDataCopyWith<$Res> get refreshData;

}
/// @nodoc
class _$RefreshedCopyWithImpl<$Res>
    implements $RefreshedCopyWith<$Res> {
  _$RefreshedCopyWithImpl(this._self, this._then);

  final Refreshed _self;
  final $Res Function(Refreshed) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? refreshData = null,}) {
  return _then(Refreshed(
refreshData: null == refreshData ? _self.refreshData : refreshData // ignore: cast_nullable_to_non_nullable
as RefreshData,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefreshDataCopyWith<$Res> get refreshData {
  
  return $RefreshDataCopyWith<$Res>(_self.refreshData, (value) {
    return _then(_self.copyWith(refreshData: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class Loading implements AuthState {
  const Loading({final  String? $type}): $type = $type ?? 'loading';
  factory Loading.fromJson(Map<String, dynamic> json) => _$LoadingFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$LoadingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.loading()';
}


}




/// @nodoc
@JsonSerializable()

class Error implements AuthState {
  const Error({final  String? $type}): $type = $type ?? 'error';
  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$ErrorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Error);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.error()';
}


}




// dart format on

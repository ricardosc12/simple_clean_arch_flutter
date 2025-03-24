// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {

 String? get name; String get email; String get grupoEmp; String get accessToken; List<String>? get bases;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.grupoEmp, grupoEmp) || other.grupoEmp == grupoEmp)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&const DeepCollectionEquality().equals(other.bases, bases));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email,grupoEmp,accessToken,const DeepCollectionEquality().hash(bases));

@override
String toString() {
  return 'User(name: $name, email: $email, grupoEmp: $grupoEmp, accessToken: $accessToken, bases: $bases)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 String? name, String email, String grupoEmp, String accessToken, List<String>? bases
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? email = null,Object? grupoEmp = null,Object? accessToken = null,Object? bases = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,grupoEmp: null == grupoEmp ? _self.grupoEmp : grupoEmp // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,bases: freezed == bases ? _self.bases : bases // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _User implements User {
  const _User({this.name, required this.email, required this.grupoEmp, required this.accessToken, final  List<String>? bases}): _bases = bases;
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override final  String? name;
@override final  String email;
@override final  String grupoEmp;
@override final  String accessToken;
 final  List<String>? _bases;
@override List<String>? get bases {
  final value = _bases;
  if (value == null) return null;
  if (_bases is EqualUnmodifiableListView) return _bases;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.grupoEmp, grupoEmp) || other.grupoEmp == grupoEmp)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&const DeepCollectionEquality().equals(other._bases, _bases));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email,grupoEmp,accessToken,const DeepCollectionEquality().hash(_bases));

@override
String toString() {
  return 'User(name: $name, email: $email, grupoEmp: $grupoEmp, accessToken: $accessToken, bases: $bases)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
 String? name, String email, String grupoEmp, String accessToken, List<String>? bases
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? email = null,Object? grupoEmp = null,Object? accessToken = null,Object? bases = freezed,}) {
  return _then(_User(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,grupoEmp: null == grupoEmp ? _self.grupoEmp : grupoEmp // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,bases: freezed == bases ? _self._bases : bases // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on

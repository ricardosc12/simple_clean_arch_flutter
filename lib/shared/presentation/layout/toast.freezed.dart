// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ToastInformation {

 DateTime get time; ToastType get toastType; String get message; String? get id;
/// Create a copy of ToastInformation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToastInformationCopyWith<ToastInformation> get copyWith => _$ToastInformationCopyWithImpl<ToastInformation>(this as ToastInformation, _$identity);

  /// Serializes this ToastInformation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToastInformation&&(identical(other.time, time) || other.time == time)&&(identical(other.toastType, toastType) || other.toastType == toastType)&&(identical(other.message, message) || other.message == message)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,time,toastType,message,id);

@override
String toString() {
  return 'ToastInformation(time: $time, toastType: $toastType, message: $message, id: $id)';
}


}

/// @nodoc
abstract mixin class $ToastInformationCopyWith<$Res>  {
  factory $ToastInformationCopyWith(ToastInformation value, $Res Function(ToastInformation) _then) = _$ToastInformationCopyWithImpl;
@useResult
$Res call({
 ToastType toastType, String message, DateTime? time, String? id
});




}
/// @nodoc
class _$ToastInformationCopyWithImpl<$Res>
    implements $ToastInformationCopyWith<$Res> {
  _$ToastInformationCopyWithImpl(this._self, this._then);

  final ToastInformation _self;
  final $Res Function(ToastInformation) _then;

/// Create a copy of ToastInformation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? toastType = null,Object? message = null,Object? time = freezed,Object? id = freezed,}) {
  return _then(_self.copyWith(
toastType: null == toastType ? _self.toastType : toastType // ignore: cast_nullable_to_non_nullable
as ToastType,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,time: freezed == time ? _self.time! : time // ignore: cast_nullable_to_non_nullable
as DateTime?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ToastInformation extends ToastInformation {
   _ToastInformation({required this.toastType, required this.message, final  DateTime? time, this.id}): super._(time: time);
  factory _ToastInformation.fromJson(Map<String, dynamic> json) => _$ToastInformationFromJson(json);

@override final  ToastType toastType;
@override final  String message;
@override final  String? id;

/// Create a copy of ToastInformation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToastInformationCopyWith<_ToastInformation> get copyWith => __$ToastInformationCopyWithImpl<_ToastInformation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ToastInformationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToastInformation&&(identical(other.toastType, toastType) || other.toastType == toastType)&&(identical(other.message, message) || other.message == message)&&(identical(other.time, time) || other.time == time)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,toastType,message,time,id);

@override
String toString() {
  return 'ToastInformation(toastType: $toastType, message: $message, time: $time, id: $id)';
}


}

/// @nodoc
abstract mixin class _$ToastInformationCopyWith<$Res> implements $ToastInformationCopyWith<$Res> {
  factory _$ToastInformationCopyWith(_ToastInformation value, $Res Function(_ToastInformation) _then) = __$ToastInformationCopyWithImpl;
@override @useResult
$Res call({
 ToastType toastType, String message, DateTime? time, String? id
});




}
/// @nodoc
class __$ToastInformationCopyWithImpl<$Res>
    implements _$ToastInformationCopyWith<$Res> {
  __$ToastInformationCopyWithImpl(this._self, this._then);

  final _ToastInformation _self;
  final $Res Function(_ToastInformation) _then;

/// Create a copy of ToastInformation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? toastType = null,Object? message = null,Object? time = freezed,Object? id = freezed,}) {
  return _then(_ToastInformation(
toastType: null == toastType ? _self.toastType : toastType // ignore: cast_nullable_to_non_nullable
as ToastType,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

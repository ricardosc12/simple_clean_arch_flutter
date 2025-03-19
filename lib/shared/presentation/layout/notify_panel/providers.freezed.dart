// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'providers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotifyPanelList {

 IList<ToastInformation> get list;
/// Create a copy of NotifyPanelList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotifyPanelListCopyWith<NotifyPanelList> get copyWith => _$NotifyPanelListCopyWithImpl<NotifyPanelList>(this as NotifyPanelList, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotifyPanelList&&const DeepCollectionEquality().equals(other.list, list));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(list));

@override
String toString() {
  return 'NotifyPanelList(list: $list)';
}


}

/// @nodoc
abstract mixin class $NotifyPanelListCopyWith<$Res>  {
  factory $NotifyPanelListCopyWith(NotifyPanelList value, $Res Function(NotifyPanelList) _then) = _$NotifyPanelListCopyWithImpl;
@useResult
$Res call({
 IList<ToastInformation> list
});




}
/// @nodoc
class _$NotifyPanelListCopyWithImpl<$Res>
    implements $NotifyPanelListCopyWith<$Res> {
  _$NotifyPanelListCopyWithImpl(this._self, this._then);

  final NotifyPanelList _self;
  final $Res Function(NotifyPanelList) _then;

/// Create a copy of NotifyPanelList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? list = null,}) {
  return _then(_self.copyWith(
list: null == list ? _self.list : list // ignore: cast_nullable_to_non_nullable
as IList<ToastInformation>,
  ));
}

}


/// @nodoc


class _NotifyPanelList implements NotifyPanelList {
   _NotifyPanelList({required this.list});
  

@override final  IList<ToastInformation> list;

/// Create a copy of NotifyPanelList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotifyPanelListCopyWith<_NotifyPanelList> get copyWith => __$NotifyPanelListCopyWithImpl<_NotifyPanelList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotifyPanelList&&const DeepCollectionEquality().equals(other.list, list));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(list));

@override
String toString() {
  return 'NotifyPanelList(list: $list)';
}


}

/// @nodoc
abstract mixin class _$NotifyPanelListCopyWith<$Res> implements $NotifyPanelListCopyWith<$Res> {
  factory _$NotifyPanelListCopyWith(_NotifyPanelList value, $Res Function(_NotifyPanelList) _then) = __$NotifyPanelListCopyWithImpl;
@override @useResult
$Res call({
 IList<ToastInformation> list
});




}
/// @nodoc
class __$NotifyPanelListCopyWithImpl<$Res>
    implements _$NotifyPanelListCopyWith<$Res> {
  __$NotifyPanelListCopyWithImpl(this._self, this._then);

  final _NotifyPanelList _self;
  final $Res Function(_NotifyPanelList) _then;

/// Create a copy of NotifyPanelList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? list = null,}) {
  return _then(_NotifyPanelList(
list: null == list ? _self.list : list // ignore: cast_nullable_to_non_nullable
as IList<ToastInformation>,
  ));
}


}

// dart format on

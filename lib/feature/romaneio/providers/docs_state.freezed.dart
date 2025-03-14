// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'docs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DocsState {

 IList<Doc> get docs; DocsStatus get status;
/// Create a copy of DocsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocsStateCopyWith<DocsState> get copyWith => _$DocsStateCopyWithImpl<DocsState>(this as DocsState, _$identity);

  /// Serializes this DocsState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocsState&&const DeepCollectionEquality().equals(other.docs, docs)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(docs),status);

@override
String toString() {
  return 'DocsState(docs: $docs, status: $status)';
}


}

/// @nodoc
abstract mixin class $DocsStateCopyWith<$Res>  {
  factory $DocsStateCopyWith(DocsState value, $Res Function(DocsState) _then) = _$DocsStateCopyWithImpl;
@useResult
$Res call({
 IList<Doc> docs, DocsStatus status
});




}
/// @nodoc
class _$DocsStateCopyWithImpl<$Res>
    implements $DocsStateCopyWith<$Res> {
  _$DocsStateCopyWithImpl(this._self, this._then);

  final DocsState _self;
  final $Res Function(DocsState) _then;

/// Create a copy of DocsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? docs = null,Object? status = null,}) {
  return _then(_self.copyWith(
docs: null == docs ? _self.docs : docs // ignore: cast_nullable_to_non_nullable
as IList<Doc>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DocsStatus,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DocsState implements DocsState {
  const _DocsState({this.docs = const IList.empty(), required this.status});
  factory _DocsState.fromJson(Map<String, dynamic> json) => _$DocsStateFromJson(json);

@override@JsonKey() final  IList<Doc> docs;
@override final  DocsStatus status;

/// Create a copy of DocsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocsStateCopyWith<_DocsState> get copyWith => __$DocsStateCopyWithImpl<_DocsState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocsStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocsState&&const DeepCollectionEquality().equals(other.docs, docs)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(docs),status);

@override
String toString() {
  return 'DocsState(docs: $docs, status: $status)';
}


}

/// @nodoc
abstract mixin class _$DocsStateCopyWith<$Res> implements $DocsStateCopyWith<$Res> {
  factory _$DocsStateCopyWith(_DocsState value, $Res Function(_DocsState) _then) = __$DocsStateCopyWithImpl;
@override @useResult
$Res call({
 IList<Doc> docs, DocsStatus status
});




}
/// @nodoc
class __$DocsStateCopyWithImpl<$Res>
    implements _$DocsStateCopyWith<$Res> {
  __$DocsStateCopyWithImpl(this._self, this._then);

  final _DocsState _self;
  final $Res Function(_DocsState) _then;

/// Create a copy of DocsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? docs = null,Object? status = null,}) {
  return _then(_DocsState(
docs: null == docs ? _self.docs : docs // ignore: cast_nullable_to_non_nullable
as IList<Doc>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DocsStatus,
  ));
}


}

// dart format on

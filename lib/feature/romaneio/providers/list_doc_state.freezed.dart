// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_doc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
ListDocState _$ListDocStateFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'default':
          return ListDocCompleted.fromJson(
            json
          );
                case 'loading':
          return ListDocLoading.fromJson(
            json
          );
                case 'empty':
          return ListDocEmpty.fromJson(
            json
          );
                case 'error':
          return ListDocError.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'ListDocState',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$ListDocState {



  /// Serializes this ListDocState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListDocState);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ListDocState()';
}


}

/// @nodoc
class $ListDocStateCopyWith<$Res>  {
$ListDocStateCopyWith(ListDocState _, $Res Function(ListDocState) __);
}


/// @nodoc
@JsonSerializable()

class ListDocCompleted implements ListDocState {
  const ListDocCompleted({required final  List<Doc> docs, final  String? $type}): _docs = docs,$type = $type ?? 'default';
  factory ListDocCompleted.fromJson(Map<String, dynamic> json) => _$ListDocCompletedFromJson(json);

 final  List<Doc> _docs;
 List<Doc> get docs {
  if (_docs is EqualUnmodifiableListView) return _docs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_docs);
}


@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ListDocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListDocCompletedCopyWith<ListDocCompleted> get copyWith => _$ListDocCompletedCopyWithImpl<ListDocCompleted>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListDocCompletedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListDocCompleted&&const DeepCollectionEquality().equals(other._docs, _docs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_docs));

@override
String toString() {
  return 'ListDocState(docs: $docs)';
}


}

/// @nodoc
abstract mixin class $ListDocCompletedCopyWith<$Res> implements $ListDocStateCopyWith<$Res> {
  factory $ListDocCompletedCopyWith(ListDocCompleted value, $Res Function(ListDocCompleted) _then) = _$ListDocCompletedCopyWithImpl;
@useResult
$Res call({
 List<Doc> docs
});




}
/// @nodoc
class _$ListDocCompletedCopyWithImpl<$Res>
    implements $ListDocCompletedCopyWith<$Res> {
  _$ListDocCompletedCopyWithImpl(this._self, this._then);

  final ListDocCompleted _self;
  final $Res Function(ListDocCompleted) _then;

/// Create a copy of ListDocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? docs = null,}) {
  return _then(ListDocCompleted(
docs: null == docs ? _self._docs : docs // ignore: cast_nullable_to_non_nullable
as List<Doc>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ListDocLoading implements ListDocState {
  const ListDocLoading({final  String? $type}): $type = $type ?? 'loading';
  factory ListDocLoading.fromJson(Map<String, dynamic> json) => _$ListDocLoadingFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$ListDocLoadingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListDocLoading);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ListDocState.loading()';
}


}




/// @nodoc
@JsonSerializable()

class ListDocEmpty implements ListDocState {
  const ListDocEmpty({final  String? $type}): $type = $type ?? 'empty';
  factory ListDocEmpty.fromJson(Map<String, dynamic> json) => _$ListDocEmptyFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$ListDocEmptyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListDocEmpty);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ListDocState.empty()';
}


}




/// @nodoc
@JsonSerializable()

class ListDocError implements ListDocState {
  const ListDocError({final  String? $type}): $type = $type ?? 'error';
  factory ListDocError.fromJson(Map<String, dynamic> json) => _$ListDocErrorFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$ListDocErrorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListDocError);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ListDocState.error()';
}


}




// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_doc_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListDocCompleted _$ListDocCompletedFromJson(Map<String, dynamic> json) =>
    ListDocCompleted(
      docs:
          (json['docs'] as List<dynamic>)
              .map((e) => Doc.fromJson(e as Map<String, dynamic>))
              .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ListDocCompletedToJson(ListDocCompleted instance) =>
    <String, dynamic>{'docs': instance.docs, 'runtimeType': instance.$type};

ListDocLoading _$ListDocLoadingFromJson(Map<String, dynamic> json) =>
    ListDocLoading($type: json['runtimeType'] as String?);

Map<String, dynamic> _$ListDocLoadingToJson(ListDocLoading instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

ListDocEmpty _$ListDocEmptyFromJson(Map<String, dynamic> json) =>
    ListDocEmpty($type: json['runtimeType'] as String?);

Map<String, dynamic> _$ListDocEmptyToJson(ListDocEmpty instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

ListDocError _$ListDocErrorFromJson(Map<String, dynamic> json) =>
    ListDocError($type: json['runtimeType'] as String?);

Map<String, dynamic> _$ListDocErrorToJson(ListDocError instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

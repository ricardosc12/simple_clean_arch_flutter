// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'docs_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DocsState _$DocsStateFromJson(Map<String, dynamic> json) => _DocsState(
  docs:
      json['docs'] == null
          ? const IList.empty()
          : IList<Doc>.fromJson(
            json['docs'],
            (value) => Doc.fromJson(value as Map<String, dynamic>),
          ),
  status: $enumDecode(_$DocsStatusEnumMap, json['status']),
);

Map<String, dynamic> _$DocsStateToJson(_DocsState instance) =>
    <String, dynamic>{
      'docs': instance.docs.toJson((value) => value),
      'status': _$DocsStatusEnumMap[instance.status]!,
    };

const _$DocsStatusEnumMap = {
  DocsStatus.loding: 'loding',
  DocsStatus.empty: 'empty',
  DocsStatus.loaded: 'loaded',
  DocsStatus.error: 'error',
  DocsStatus.initalLoading: 'initalLoading',
};

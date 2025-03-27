// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incidente_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IncidenteState _$IncidenteStateFromJson(Map<String, dynamic> json) =>
    _IncidenteState(
      incidentes:
          json['incidentes'] == null
              ? const IList.empty()
              : IList<Incidente>.fromJson(
                json['incidentes'],
                (value) => Incidente.fromJson(value as Map<String, dynamic>),
              ),
      status: $enumDecode(_$IncidenteStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$IncidenteStateToJson(_IncidenteState instance) =>
    <String, dynamic>{
      'incidentes': instance.incidentes.toJson((value) => value.toJson()),
      'status': _$IncidenteStatusEnumMap[instance.status]!,
    };

const _$IncidenteStatusEnumMap = {
  IncidenteStatus.initialLoading: 'initialLoading',
  IncidenteStatus.loading: 'loading',
  IncidenteStatus.empty: 'empty',
  IncidenteStatus.loaded: 'loaded',
  IncidenteStatus.error: 'error',
};

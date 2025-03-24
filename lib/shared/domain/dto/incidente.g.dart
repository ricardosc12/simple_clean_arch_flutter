// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incidente.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateIncidenteDto _$CreateIncidenteDtoFromJson(Map<String, dynamic> json) =>
    _CreateIncidenteDto(
      situacao: $enumDecode(_$IncidenteSituacaoEnumMap, json['situacao']),
      nomeRelator: json['nomeRelator'] as String,
      email: json['email'] as String,
      telefone: json['telefone'] as String,
      resumo: json['resumo'] as String,
      data: DateTime.parse(json['data'] as String),
    );

Map<String, dynamic> _$CreateIncidenteDtoToJson(_CreateIncidenteDto instance) =>
    <String, dynamic>{
      'situacao': _$IncidenteSituacaoEnumMap[instance.situacao]!,
      'nomeRelator': instance.nomeRelator,
      'email': instance.email,
      'telefone': instance.telefone,
      'resumo': instance.resumo,
      'data': instance.data.toIso8601String(),
    };

const _$IncidenteSituacaoEnumMap = {
  IncidenteSituacao.andamento: 'ANDAMENTO',
  IncidenteSituacao.finalizado: 'FINALIZADO',
  IncidenteSituacao.impedido: 'IMPEDIDO',
  IncidenteSituacao.pendente: 'PENDENTE',
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incidente.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Incidente _$IncidenteFromJson(Map<String, dynamic> json) => _Incidente(
  id: json['id'] as String,
  nomeRelator: json['nome_relator'] as String,
  email: json['email'] as String,
  telefone: json['telefone'] as String,
  situacao: $enumDecode(_$IncidenteSituacaoEnumMap, json['situacao']),
  resumo: json['resumo'] as String,
  data: DateTime.parse(json['data'] as String),
);

Map<String, dynamic> _$IncidenteToJson(_Incidente instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome_relator': instance.nomeRelator,
      'email': instance.email,
      'telefone': instance.telefone,
      'situacao': _$IncidenteSituacaoEnumMap[instance.situacao]!,
      'resumo': instance.resumo,
      'data': instance.data.toIso8601String(),
    };

const _$IncidenteSituacaoEnumMap = {
  IncidenteSituacao.andamento: 'ANDAMENTO',
  IncidenteSituacao.finalizado: 'FINALIZADO',
  IncidenteSituacao.impedido: 'IMPEDIDO',
  IncidenteSituacao.pendente: 'PENDENTE',
};

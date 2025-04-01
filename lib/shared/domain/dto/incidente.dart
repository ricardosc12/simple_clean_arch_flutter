import 'package:flutter_application_1/shared/domain/models/incidente_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'incidente.freezed.dart';
part 'incidente.g.dart';

@freezed
abstract class CreateIncidenteDto with _$CreateIncidenteDto {
  factory CreateIncidenteDto({
    required IncidenteSituacao situacao,
    required String nomeRelator,
    required String email,
    required String telefone,
    required String resumo,
    required DateTime data,
  }) = _CreateIncidenteDto;

  factory CreateIncidenteDto.fromJson(Map<String, dynamic> json) =>
      _$CreateIncidenteDtoFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'incidente_model.freezed.dart';
part 'incidente_model.g.dart';

@JsonEnum()
enum IncidenteSituacao {
  @JsonValue("ANDAMENTO")
  andamento,
  @JsonValue("FINALIZADO")
  finalizado,
  @JsonValue("IMPEDIDO")
  impedido,
  @JsonValue("PENDENTE")
  pendente;

  String get itemValue => name.toUpperCase();
  String get itemLabel {
    switch (this) {
      case andamento:
        return "Andamento";
      case finalizado:
        return "Finalizado";
      case impedido:
        return "Impedido";
      case pendente:
        return "Pendente";
    }
  }
}

@freezed
abstract class Incidente with _$Incidente {
  const factory Incidente({
    required String id,
    required String nomeRelator,
    required String email,
    required String telefone,
    required IncidenteSituacao situacao,
    required String resumo,
    required DateTime data,
  }) = _Incidente;

  factory Incidente.fromJson(Map<String, dynamic> json) => _$IncidenteFromJson(json);
}


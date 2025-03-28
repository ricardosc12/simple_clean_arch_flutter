import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_application_1/shared/utils/enum.dart';

part 'financeiro_response.freezed.dart';
part 'financeiro_response.g.dart';

@JsonEnum(alwaysCreate: true)
enum FaturaStatus with EnumUpperStatus {
  @JsonValue("ABERTA")
  aberta("Aberta"),
  @JsonValue("APROVADA")
  aprovada("Aprovada"),
  @JsonValue("EDICAO")
  edicao("Edição"),
  @JsonValue("EM EDICAO")
  emEdicao("Em Edição"),
  @JsonValue("FECHADA")
  fechada("Fechada"),
  @JsonValue("PAGA")
  paga("Paga"),
  @JsonValue("AUDITORIA")
  auditoria("Auditoria"),
  desconhecido("Desconhecido");

  const FaturaStatus(this.itemLabel);

  @override
  final String itemLabel;
  @override
  String toJson() => _$FaturaStatusEnumMap[this] ?? name.toUpperCase();
}

@freezed
abstract class Fatura with _$Fatura {
  const factory Fatura({
    String? id,
    String? numero,
    String? tipo,
    DateTime? dataPagamento,
    DateTime? dataAbertura,
    DateTime? dataFechamento,
    DateTime? dataVencimento,
    FaturaStatus? status,
    String? pagador,
    String? recebedor,
    String? acordoFreteId,
    bool? faturaAtual,
    Acordo? acordo,
    double? valorPrevisto,
    int? taxasAprovados,
    double? valorFatura,
  }) = _Fatura;

  factory Fatura.fromJson(Map<String, dynamic> json) => _$FaturaFromJson(json);
}

@freezed
abstract class Acordo with _$Acordo {
  const factory Acordo({
    String? nomeEmbarcador,
    String? codEmbarcador,
    String? nomeEntregador,
    String? codEntregador,
  }) = _Acordo;

  factory Acordo.fromJson(Map<String, dynamic> json) => _$AcordoFromJson(json);
}

import 'package:flutter_application_1/core/extensions/persistent_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_application_1/shared/utils/enum.dart';

part 'get_doc_response.freezed.dart';
part 'get_doc_response.g.dart';

@JsonEnum()
enum TipoDoc with EnumUpperStatus {
  @JsonValue("AZP")
  azp("Azp"),
  @JsonValue("CTE")
  cte("CTe"),
  @JsonValue("DCI")
  dci("DCI"),
  @JsonValue("DESCONHECIDO")
  desconhecido("Desconhecido"),
  @JsonValue("DEVOLUCAO")
  devolucao("Devolução"),
  @JsonValue("DNI")
  dni("DNI"),
  @JsonValue("DUPLICADO")
  duplicado("Duplicado"),
  @JsonValue("MINUTA")
  minuta("Minuta"),
  @JsonValue("NFSE")
  nfse("NFSe"),
  @JsonValue("NOTA")
  nota("Nota"),
  @JsonValue("SCAN")
  scan("Scan"),
  @JsonValue("TICKER")
  ticker("Ticker"),
  naoInformado("Não informado");

  const TipoDoc(this.itemLabel);

  @override
  final String itemLabel;

  @override
  String toJson() => _$TipoDocEnumMap[this] ?? name.toUpperCase();
}

@freezed
abstract class GetDocsResponse with _$GetDocsResponse {
  factory GetDocsResponse({required List<Document>? docs}) = _GetDocsResponse;

  factory GetDocsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetDocsResponseFromJson(json);
}

@freezed
abstract class Document with _$Document implements PersistentState {
  const factory Document({
    required String? ar,
    @JsonKey(unknownEnumValue: TipoDoc.naoInformado) required TipoDoc? tipoDoc,
    required String? chave,
    required String? status,
    required String? numero,
    required String? dtEmis,
    required String? cnpjRemete,
    required String? nomeRemete,
    required Rota? rota,
    required String? cnpjDest,
    required String? nomeDest,
    required String? numAlt,
    required Romaneio? romaneio,
    required Map<String, String>? envolvidos,
    required Grupo? grupo,
    required String? volumes,
    required Dest? dest,
  }) = _Document;

  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);
}

@freezed
abstract class Dest with _$Dest {
  const factory Dest({
    required String? cod,
    required String? numDoc,
    required Bairro? bairro,
    required End? end,
    required Bairro? cidade,
    required String? nome,
    required Estado? estado,
    required Map<String, Prazo>? prazos,
    required Bairro? regiao,
    required Bairro? meso,
    required Bairro? micro,
    required String? endComp,
  }) = _Dest;

  factory Dest.fromJson(Map<String, dynamic> json) => _$DestFromJson(json);
}

@freezed
abstract class Bairro with _$Bairro {
  const factory Bairro({required String? nome, required String? cod}) = _Bairro;

  factory Bairro.fromJson(Map<String, dynamic> json) => _$BairroFromJson(json);
}

@freezed
abstract class End with _$End {
  const factory End({
    required String? cep,
    required String? num,
    required String? log,
  }) = _End;

  factory End.fromJson(Map<String, dynamic> json) => _$EndFromJson(json);
}

@freezed
abstract class Estado with _$Estado {
  const factory Estado({
    required String? cod,
    required String? sigla,
    required String? nome,
  }) = _Estado;

  factory Estado.fromJson(Map<String, dynamic> json) => _$EstadoFromJson(json);
}

@freezed
abstract class Prazo with _$Prazo {
  const factory Prazo({
    required List<String>? dias,
    required String? tipo,
    required String? corte,
  }) = _Prazo;

  factory Prazo.fromJson(Map<String, dynamic> json) => _$PrazoFromJson(json);
}

@freezed
abstract class Grupo with _$Grupo {
  const factory Grupo({
    required String? grupoEmp,
    required String? nomeEmpresa,
    required String? cnpjEmpresa,
    required Embarcador? embarcador,
    required Entregador? entregador,
  }) = _Grupo;

  factory Grupo.fromJson(Map<String, dynamic> json) => _$GrupoFromJson(json);
}

@freezed
abstract class Embarcador with _$Embarcador {
  const factory Embarcador({required String? cnpjEmpresa}) = _Embarcador;

  factory Embarcador.fromJson(Map<String, dynamic> json) =>
      _$EmbarcadorFromJson(json);
}

@freezed
abstract class Entregador with _$Entregador {
  const factory Entregador({
    required String? cnpjEmpresa,
    required String? nomeEmpresa,
    required String? grupo,
  }) = _Entregador;

  factory Entregador.fromJson(Map<String, dynamic> json) =>
      _$EntregadorFromJson(json);
}

@freezed
abstract class Romaneio with _$Romaneio {
  const factory Romaneio({
    required String? numero,
    required String? hash,
    required String? tipo,
    required DateTime? dtRom,
    required Criador? criador,
    required bool? romSistema,
    required String? base,
    required String? cpfMotorista,
    required String? nomeMotorista,
    required int? posEntrega,
  }) = _Romaneio;

  factory Romaneio.fromJson(Map<String, dynamic> json) =>
      _$RomaneioFromJson(json);
}

@freezed
abstract class Criador with _$Criador {
  const factory Criador({required String? nome, required String? cpf}) =
      _Criador;

  factory Criador.fromJson(Map<String, dynamic> json) =>
      _$CriadorFromJson(json);
}

@freezed
abstract class Rota with _$Rota {
  const factory Rota({
    required String? id,
    required String? nome,
    required int? posEntrega,
  }) = _Rota;

  factory Rota.fromJson(Map<String, dynamic> json) => _$RotaFromJson(json);
}

@freezed
abstract class CreatedAt with _$CreatedAt {
  const factory CreatedAt({required Date? date}) = _CreatedAt;

  factory CreatedAt.fromJson(Map<String, dynamic> json) =>
      _$CreatedAtFromJson(json);
}

@freezed
abstract class Date with _$Date {
  const factory Date({required String? numberLong}) = _Date;

  factory Date.fromJson(Map<String, dynamic> json) => _$DateFromJson(json);
}

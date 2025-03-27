import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_doc_params.freezed.dart';
part 'get_doc_params.g.dart';

@freezed
abstract class GetDocsParam with _$GetDocsParam {
  const factory GetDocsParam({
    required String cpfMotorista,
    required Map<String, GruposEmp> gruposEmp,
    required int tipo,
    required String cpf,
    required String imei,
    required String dispositivo,
    required String versao,
    required String app,
    required String build,
    required DateTime time,
    required String timezone,
  }) = _GetDocsParam;

  factory GetDocsParam.fromJson(Map<String, dynamic> json) =>
      _$GetDocsParamFromJson(json);
}

@freezed
abstract class GruposEmp with _$GruposEmp {
  const factory GruposEmp({
    required String grupo,
    required Map<String, Base> bases,
  }) = _GruposEmp;

  factory GruposEmp.fromJson(Map<String, dynamic> json) =>
      _$GruposEmpFromJson(json);
}

@freezed
abstract class Base with _$Base {
  const factory Base({
    required String nome,
    required String sigla,
    required Map<String, dynamic> modulos,
    required List<String> cnpjs,
    required List<String> comprovarDevolucao,
  }) = _Base;

  factory Base.fromJson(Map<String, dynamic> json) => _$BaseFromJson(json);
}

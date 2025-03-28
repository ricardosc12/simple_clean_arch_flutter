import 'package:flutter_application_1/shared/adapters/datetime_adapter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'financeiro_param.freezed.dart';
part 'financeiro_param.g.dart';

@freezed
abstract class ListFaturasParam with _$ListFaturasParam {
    const factory ListFaturasParam({
        Filtros? filtros,
    }) = _ListFaturasParam;

    factory ListFaturasParam.fromJson(Map<String, dynamic> json) => _$ListFaturasParamFromJson(json);
}

@freezed
abstract class Filtros with _$Filtros {
    const factory Filtros({
        Periodo? periodo,
    }) = _Filtros;

    factory Filtros.fromJson(Map<String, dynamic> json) => _$FiltrosFromJson(json);
}

@freezed
abstract class Periodo with _$Periodo {
    const factory Periodo({
       @DateTimeAdapter() DateTime? ini,
       @DateTimeAdapter() DateTime? fim,
    }) = _Periodo;

    factory Periodo.fromJson(Map<String, dynamic> json) => _$PeriodoFromJson(json);
}

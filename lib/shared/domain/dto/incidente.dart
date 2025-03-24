import 'package:freezed_annotation/freezed_annotation.dart';

part 'incidente.freezed.dart';
part 'incidente.g.dart';

@freezed
abstract class IncidenteFormDto with _$IncidenteFormDto {
  factory IncidenteFormDto({
    required String arg1,
    required int arg2,
    required DateTime arg3,
  }) = _IncidenteFormDto;

  factory IncidenteFormDto.fromJson(Map<String, dynamic> json) =>
      _$IncidenteFormDtoFromJson(json);
}

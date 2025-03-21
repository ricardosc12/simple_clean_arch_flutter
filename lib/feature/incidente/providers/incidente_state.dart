import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../shared/domain/models/incidente.dart';
part 'incidente_state.freezed.dart';
part 'incidente_state.g.dart';

enum IncidenteStatus { initialLoading, loading, empty, loaded, error }

@freezed
abstract class IncidenteState with _$IncidenteState {
  const factory IncidenteState({
    @Default(IList.empty()) IList<Incidente> incidentes,
    required IncidenteStatus status,
  }) = _IncidenteState;

  factory IncidenteState.fromJson(Map<String, dynamic> json) =>
      _$IncidenteStateFromJson(json);
}

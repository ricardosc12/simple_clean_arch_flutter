import 'package:faker/faker.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_application_1/feature/incidente/providers/incidente_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../shared/domain/dto/incidente.dart';
import '../../../shared/domain/models/incidente.dart';
import '../repository/incidente_repository.dart';

part 'incidente_provider.g.dart';

final indexProvider = Provider<int>((ref) {
  throw UnimplementedError();
});

@riverpod
class Incidentes extends _$Incidentes {
  late final IncidenteRepository _incidenteRepository =
      IncidenteRepositoryLocalImpl();

  @override
  IncidenteState build() {
    _fetchIncidente().then((incidenteState) {
      state = incidenteState;
    });

    return IncidenteState(status: IncidenteStatus.loading);
  }

  Future<IncidenteState> _fetchIncidente() async {
    final res = await _incidenteRepository.getIncidentes();

    return res.when(
      (data) {
        return IncidenteState(
          incidentes: data.lock,
          status: data.isEmpty ? IncidenteStatus.empty : IncidenteStatus.loaded,
        );
      },
      (_) {
        return IncidenteState(status: IncidenteStatus.error);
      },
    );
  }

  Future<void> syncIncidente() async {
    state = state.copyWith(status: IncidenteStatus.loading);
    state = await _fetchIncidente();
  }

  void removeIncidente({required String id}) {
    final index = state.incidentes.indexWhere((i) => i.id == id);
    if (index == -1) return;
    state = state.copyWith(incidentes: state.incidentes.removeAt(index));
  }

  void addIncidente({required CreateIncidenteDto incidente}) {
    final incidente0 = createExampleIncidente(incidente);
    state = state.copyWith(incidentes: state.incidentes.insert(0, incidente0));
  }

  void editIncidente({
    required String id,
    required CreateIncidenteDto incidente,
  }) {
    final incidente0 = createExampleIncidente(incidente);
    final index = state.incidentes.indexWhere((i) => i.id == id);
    if (index == -1) return;
    state = state.copyWith(
      incidentes: state.incidentes.replace(index, incidente0),
    );
  }
}

Incidente createExampleIncidente(CreateIncidenteDto incidenteDto) {
  return Incidente(
    id: faker.randomGenerator.fromCharSet("0123456789", 5),
    situacao: incidenteDto.situacao,
    nomeRelator: incidenteDto.nomeRelator,
    email: incidenteDto.email,
    telefone: incidenteDto.telefone,
    resumo: incidenteDto.resumo,
  );
}

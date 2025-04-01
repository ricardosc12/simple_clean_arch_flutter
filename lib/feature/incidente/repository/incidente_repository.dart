import 'package:faker/faker.dart';
import 'package:multiple_result/multiple_result.dart';
import '../../../shared/domain/models/incidente_model.dart';

abstract class IncidenteRepository {
  Future<Result<List<Incidente>, Exception>> getIncidentes();
}

class IncidenteRepositoryLocalImpl implements IncidenteRepository {
  @override
  Future<Result<List<Incidente>, Exception>> getIncidentes() async {
    await Future.delayed(Duration(milliseconds: 1000));
    final incidenteSituacao = IncidenteSituacao.values;

    List<String> nomesRelatores = List.generate(8, (_) => faker.person.name());
    List<String> emails = List.generate(6, (_) => faker.internet.email());
    List<String> telefones = List.generate(6, (_) => faker.phoneNumber.de());
    List<String> resumos = List.generate(6, (_) => faker.lorem.sentence());
    List<DateTime> datas = List.generate(6, (_) => faker.date.dateTime());

    List<Incidente> incidentes = [];

    for (var i = 0; i < 50; i++) {
      incidentes.add(
        Incidente(
          id: faker.randomGenerator.fromCharSet("0123456789", 5),
          nomeRelator: faker.randomGenerator.element(nomesRelatores),
          email: faker.randomGenerator.element(emails),
          resumo: faker.randomGenerator.element(resumos),
          telefone: faker.randomGenerator.element(telefones),
          data: faker.randomGenerator.element(datas),
          situacao:
              incidenteSituacao[faker.randomGenerator.integer(
                incidenteSituacao.length,
              )],
        ),
      );
    }
    return Future.value(Success(incidentes));
  }
}

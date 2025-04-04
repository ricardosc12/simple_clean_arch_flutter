import 'package:faker/faker.dart';
import 'package:flutter_application_1/shared/domain/models/doc_model.dart';
import 'package:flutter_application_1/shared/domain/models/romaneio_model.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class DocRepository {
  Future<Result<List<DocTeste>, Exception>> getDocs();
}

class DocRepositoryLocalImpl implements DocRepository {
  @override
  Future<Result<List<DocTeste>, Exception>> getDocs() async {

    await Future.delayed(Duration(milliseconds: 1000));
    final romTipos = RomaneioTipo.values;
    final docStatus = DocTesteStatus.values;

    List<String> remetentes = List.generate(8, (_) => faker.person.name());
    List<String> destinatarios = List.generate(6, (_) => faker.person.name());
    List<Romaneio> romaneios = List.generate(
      15,
      (_) => Romaneio(
        cod: faker.randomGenerator.fromCharSet("1234567890", 8),
        numero: faker.randomGenerator.fromCharSet("1234567890", 8),
        grupoEmp: faker.randomGenerator.element(["JC", "JR"]),
        tipo: romTipos[faker.randomGenerator.integer(romTipos.length)],
      ),
    );

    List<DocTeste> docs = [];

    for (var i = 0; i < 50; i++) {
      docs.add(
        DocTeste(
          ar: faker.randomGenerator.fromCharSet("1234567890", 15),
          chave: faker.randomGenerator.fromCharSet("1234567890", 15),
          destinatario: faker.randomGenerator.element(remetentes),
          numero: faker.randomGenerator.fromCharSet("1234567890", 8),
          remetente: faker.randomGenerator.element(destinatarios),
          status: docStatus[faker.randomGenerator.integer(docStatus.length)],
          romaneio: faker.randomGenerator.element(romaneios),
        ),
      );
    }

    return Future.value(Success(docs));
  }
}

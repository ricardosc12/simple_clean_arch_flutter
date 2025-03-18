import 'package:faker/faker.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_application_1/feature/romaneio/providers/docs_state.dart';
import 'package:flutter_application_1/feature/romaneio/repository/doc_repository.dart';
import 'package:flutter_application_1/shared/domain/dto/doc.dart';
import 'package:flutter_application_1/shared/domain/models/doc.dart';
import 'package:flutter_application_1/shared/domain/models/romaneio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'docs_provider.g.dart';

final indexProvider = Provider<int>((ref) {
  throw UnimplementedError();
});

@riverpod
class Docs extends _$Docs {
  late final DocRepository _docRepository;

  @override
  DocsState build() {
    _docRepository = DocRepositoryLocalImpl();

    _fetchDocs().then((docsState) {
      state = docsState;
    });

    return DocsState(status: DocsStatus.initalLoading);
  }

  Future<DocsState> _fetchDocs() async {
    final res = await _docRepository.getDocs();

    return res.when(
      (data) {
        return DocsState(docs: data.lock, status: DocsStatus.loaded);
      },
      (_) {
        return DocsState(status: DocsStatus.error);
      },
    );
  }

  Future<void> syncDocs() async {
    state = state.copyWith(status: DocsStatus.loding);
    state = await _fetchDocs();
  }

  void removeDoc({required String ar}) {
    final index = state.docs.indexWhere((e) => e.ar == ar);
    if (index == -1) return;
    state = state.copyWith(docs: state.docs.removeAt(index));
  }

  void addDoc({required CreateDocDto doc}) {
    final doc0 = createExampleDoc(doc);
    state = state.copyWith(docs: state.docs.insert(0, doc0));
  }

  void editDoc({required String ar, required CreateDocDto doc}) {
    final doc0 = createExampleDoc(doc);

    final index = state.docs.indexWhere((d) => d.ar == ar);

    if (index == -1) return;

    state = state.copyWith(docs: state.docs.replace(index, doc0));
  }

  void pushDoc() {
    state = state.copyWith(
      docs: state.docs.replace(
        0,
        state.docs[0].copyWith(ar: faker.animal.name()),
      ),
    );
  }
}

Doc createExampleDoc(CreateDocDto docDto) {
  return Doc(
    ar: faker.randomGenerator.fromCharSet("0123456789", 15),
    chave: faker.randomGenerator.fromCharSet("0123456789", 15),
    numero: faker.randomGenerator.fromCharSet("0123456789", 8),
    status: docDto.status,
    romaneio: Romaneio(
      cod: faker.randomGenerator.fromCharSet("0123456789", 8),
      numero: faker.randomGenerator.fromCharSet("0123456789", 8),
      grupoEmp: "JC",
      tipo: RomaneioTipo.app,
    ),
    destinatario: docDto.destinatario,
    remetente: docDto.remetente,
  );
}

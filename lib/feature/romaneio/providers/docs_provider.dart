import 'package:faker/faker.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_application_1/core/exceptions/app_error.dart';
import 'package:flutter_application_1/core/extensions/riverpod_persistent_extension.dart';
import 'package:flutter_application_1/feature/romaneio/providers/docs_state.dart';
import 'package:flutter_application_1/feature/romaneio/repository/doc_repository.dart';
import 'package:flutter_application_1/shared/domain/dto/doc.dart';
import 'package:flutter_application_1/shared/domain/models/doc_model.dart';
import 'package:flutter_application_1/shared/domain/models/romaneio_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'docs_provider.g.dart';

final indexProvider = Provider<int>((ref) {
  throw UnimplementedError();
});

@riverpod
class PendingDocs extends _$PendingDocs {
  @override
  FutureOr<DocsState> build() async {
    return ref.autoPersist(
      key: "pending_docs",
      initial: DocsState(docs: IList()),
      fromJson: DocsState.fromJson,
      ifSave: (data) => true,
    );
  }
}

@riverpod
class Docs extends _$Docs {
  late final DocRepository _docRepository;

  @override
  FutureOr<DocsState> build() async {
    _docRepository = DocRepositoryLocalImpl();

    final res = await _docRepository.getDocs();

    return res.when(
      (data) {
        return DocsState(docs: data.lock);
      },
      (e) {
        throw AppError(message: "Não foi possível obter documentos!");
      },
    );
  }

  void removeDoc({required String ar}) {
    final data = state.valueOrNull;
    final index = data?.docs.indexWhere((e) => e.ar == ar);
    if (index == -1 || data == null || index == null) return;
    state = AsyncData(data.copyWith(docs: data.docs.removeAt(index)));
  }

  void addDoc({required CreateDocDto doc}) {
    state.whenData((data) {
      final doc0 = createExampleDoc(doc);
      state = AsyncData(data.copyWith(docs: data.docs.insert(0, doc0)));
    });
  }

  void editDoc({required String ar, required CreateDocDto doc}) {
    state.whenData((data) {
      final doc0 = createExampleDoc(doc);

      final index = data.docs.indexWhere((d) => d.ar == ar);

      if (index == -1) return;

      state = AsyncData(data.copyWith(docs: data.docs.replace(index, doc0)));
    });
  }

  void pushDoc() {
    state.whenData((data) {
      state = AsyncData(
        data.copyWith(
          docs: data.docs.replace(
            0,
            data.docs[0].copyWith(ar: faker.animal.name()),
          ),
        ),
      );
    });
  }
}

DocTeste createExampleDoc(CreateDocDto docDto) {
  return DocTeste(
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

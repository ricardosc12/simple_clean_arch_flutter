import 'package:flutter_application_1/feature/romaneio/providers/list_doc_state.dart';
import 'package:flutter_application_1/feature/romaneio/repository/doc_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'list_doc_provider.g.dart';

@riverpod
class ListDoc extends _$ListDoc {
  late final DocRepository _docRepository;

  @override
  FutureOr<ListDocState> build() async {
    _docRepository = DocRepositoryLocalImpl();

    final docs = await _fetchDocs();

    return docs;
  }

  Future<ListDocState> _fetchDocs({int time = 1000}) async {
    state = AsyncData(ListDocLoading());

    final res = await _docRepository.getDocs();

    await Future.delayed(Duration(milliseconds: time));

    return res.when(
      (docs) {
        return ListDocCompleted(docs: docs);
      },
      (e) {
        return ListDocEmpty();
      },
    );
  }

  void syncDocs() async {
    state = AsyncData(await _fetchDocs(time: 0));
  }
}

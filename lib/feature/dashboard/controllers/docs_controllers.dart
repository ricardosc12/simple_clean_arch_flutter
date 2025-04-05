import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_application_1/core/extensions/riverpod_persistent_extension.dart';
import 'package:flutter_application_1/feature/profile/states/profile_state.dart';
import 'package:flutter_application_1/shared/data/dto/docs/get_doc_params.dart';
import 'package:flutter_application_1/shared/data/dto/docs/get_doc_response.dart';
import 'package:flutter_application_1/shared/data/mocks/docs_mock.dart';
import 'package:flutter_application_1/shared/data/repository/doc_repository.dart';
import 'package:flutter_application_1/shared/data/source/cache_store.dart';
import 'package:flutter_application_1/shared/utils/codecs.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'docs_controllers.g.dart';

@Riverpod(keepAlive: false)
FutureOr<IList<Document>> documents(Ref ref) async {
  final docsRepository = ref.watch(docsRepositoryProvider);
  final params = GetDocsParam.fromJson(DOC_PARAM);
  final resp = await docsRepository.getDocs(params);
  print("resp: $resp");
  return resp.when(
    (data) {
      return data;
    },
    (e) {
      return IList();
    },
  );
}

@Riverpod(keepAlive: true)
class DocumentsCached extends _$DocumentsCached {
  @override
  FutureOr<IList<Document>> build() async {
    final docs = ref.watch(documentsProvider.future);

    final cachedDocuments = await ref.autoPersistList(
      key: "documents_cached",
      initial: () async => await docs,
      fromJson: Document.fromJson,
      ifSave: (_) => true,
    );

    return cachedDocuments;
  }
}

@riverpod
CacheStore cacheProfile(Ref ref) {
  return CacheStoreImpl<IList<ProfileState>>(
    key: "teste",
    fromJson: (json) => JsonListCodec.fromJson(json, ProfileState.fromJson),
    toJson: (list) => JsonListCodec.toJson(list, (data) => data.toJson()),
  );
}

@Riverpod(keepAlive: true)
class ProfileCached extends _$ProfileCached {
  @override
  Stream<IList<ProfileState>?> build() {
    final profileCache = ref.watch(cacheProfileProvider);

    return ref.autoCache(
      cacheStore: profileCache,
      future: () async {
        await Future.delayed(Duration(milliseconds: 4000));
        return IList([ProfileState(data: DateTime.now().toIso8601String())]);
      },
    );
  }

  void changeState() {
    state = AsyncData(
      IList([ProfileState(data: DateTime.now().toIso8601String())]),
    );
  }
}

import 'dart:convert';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_application_1/core/extensions/riverpod_persistent_extension.dart';
import 'package:flutter_application_1/feature/profile/states/profile_state.dart';
import 'package:flutter_application_1/shared/data/dto/docs/get_doc_params.dart';
import 'package:flutter_application_1/shared/data/dto/docs/get_doc_response.dart';
import 'package:flutter_application_1/shared/data/mocks/docs_mock.dart';
import 'package:flutter_application_1/shared/data/repository/doc_repository.dart';
import 'package:flutter_application_1/shared/data/source/cache_store.dart';
import 'package:flutter_application_1/shared/log/log_service.dart';
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

    print("invalidate $docs");

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
Future<IList<ProfileState>?> profile(Ref ref) async {
  await Future.delayed(Duration(milliseconds: 4000));
  return IList([ProfileState(data: DateTime.now().toIso8601String())]);
}

@riverpod
CacheStore cacheProfile(Ref ref) {
  return CacheStoreImpl<IList<ProfileState>>(
    key: "teste",
    fromJson:
        (json) =>
            List.generate(
              json.length,
              (index) => (ProfileState.fromJson(json[index.toString()])),
            ).lock,
    toJson:
        (data) => data.unlock.asMap().map(
          (idx, d) => MapEntry(idx.toString(), d.toJson() as dynamic),
        ),
  );
}

@riverpod
Stream<IList<ProfileState>?> cachedProfile(Ref ref) async* {
  final futureProfile = ref.watch(profileProvider.future);
  final profileCache = ref.watch(cacheProfileProvider);
  final stopwatch = Stopwatch()..start();
  final profileCached = await profileCache.getData();
  LogService.logger.info('Hive Cache retrieve in ${stopwatch.elapsed}');
  if (profileCached != null) yield (profileCached as IList<ProfileState>);
  final profile = await futureProfile;
  if (profile != null) {
    if (profile != profileCached) {
      profileCache.setData(profile);
    }
    yield profile;
  }
  return;
}

// @riverpod
//  (Ref ref) {
//   return ;
// }

// @riverpod
// FutureOr<IList<Document>> documentsCached(Ref<AsyncValue> ref) {
//   final cachedDocuments = ref.autoPersistList(
//     key: "documents_cached",
//     initial: IList<Document>(),
//     fromJson: Document.fromJson,
//     ifSave: (_) => true,
//   );
//   return cachedDocuments;
// }

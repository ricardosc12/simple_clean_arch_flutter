import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_application_1/core/exceptions/app_error.dart';
import 'package:flutter_application_1/shared/data/dto/docs/get_doc_params.dart';
import 'package:flutter_application_1/shared/data/dto/docs/get_doc_response.dart';
import 'package:flutter_application_1/shared/data/source/doc_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';

final docsRepositoryProvider = Provider<DocsRepository>((ref) {
  final docsApi = ref.watch(docsApiProvider);
  return DocRepositoryRemoteImpl(docsApi);
});

abstract class DocsRepository {
  Future<Result<IList<MobileDoc>, AppError>> getDocs(GetDocsParam params);
}

class DocRepositoryRemoteImpl implements DocsRepository {
  final DocsApi _docsApi;

  const DocRepositoryRemoteImpl(this._docsApi);

  @override
  Future<Result<IList<MobileDoc>, AppError>> getDocs(
    GetDocsParam params,
  ) async {
    final res = await _docsApi.getDocs(params);

    return res.when(
      (response) {
        return Success(IList(response.dados.docs));
      },
      (e) {
        return Error(AppError(message: e.message));
      },
    );
  }
}

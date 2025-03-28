import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/adapters/response_api_adapter.dart';
import 'package:flutter_application_1/core/data/network_service.dart';
import 'package:flutter_application_1/core/dtos/respose_api_dto.dart';
import 'package:flutter_application_1/shared/data/dto/docs/get_doc_params.dart';
import 'package:flutter_application_1/shared/data/dto/docs/get_doc_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:retrofit/retrofit.dart';

part 'doc_api.g.dart';

final docsApiProvider = Provider<DocsApi>((ref) {
  final networkService = ref.watch(networkServiceProvider);
  return DocsApi(networkService);
});

@RestApi(baseUrl: "https://testes.azapfy.com.br", callAdapter: ResponseAdapter)
abstract class DocsApi {
  factory DocsApi(Dio dio) = _DocsApi;

  @POST("/api/appmotorista/pesquisar")
  Future<Result<ApiSuccess<GetDocsResponse>, ApiError>> getDocs(
    @Body() GetDocsParam params,
  );
}

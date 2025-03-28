import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/adapters/response_api_adapter.dart';
import 'package:flutter_application_1/core/data/network_service.dart';
import 'package:flutter_application_1/core/dtos/respose_api_dto.dart';
import 'package:flutter_application_1/shared/data/dto/financeiro/financeiro_param.dart';
import 'package:flutter_application_1/shared/data/dto/financeiro/financeiro_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:retrofit/retrofit.dart';

part 'financeiro_api.g.dart';

final financeiroApiProvider = Provider<FinanceiroApi>((ref) {
  final networkService = ref.watch(networkServiceProvider);
  return FinanceiroApi(networkService);
});

@RestApi(callAdapter: ResponseAdapter)
abstract class FinanceiroApi {
  factory FinanceiroApi(Dio dio) = _FinanceiroApi;

  @POST("/secure/api/frete/listarFaturas")
  Future<Result<ApiSuccess<List<Fatura>>, ApiError>> listarFaturas(
    @Query("grupo") String grupoEmp,
    @Body() ListFaturasParam params,
  );
}

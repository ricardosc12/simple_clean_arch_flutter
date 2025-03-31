import 'package:flutter_application_1/core/dtos/respose_api_dto.dart';
import 'package:flutter_application_1/shared/log/log_service.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:retrofit/retrofit.dart';

class ResponseAdapter<T>
    extends CallAdapter<Future<T>, Future<Result<T, ApiError>>> {
  @override
  Future<Result<T, ApiError>> adapt(Future<T> Function() call) async {
    try {
      final response = await call();
      if (response is ApiSuccess && response.status == false) {
        return Error(
          ApiError(
            message: response.mensagem ?? "Não foi possível realizar a ação!",
            status: "500",
          ),
        );
      }
      return Success(response);
    } on TypeError catch (e) {
      //TODO: add stacktrace
      LogService.logger.error("$e - $T");
      return Error(
        ApiError(
          message: "Não foi possível obter os dados corretamente",
          status: "500",
        ),
      );
    } catch (e) {
      return Error(ApiError(message: "Erro inesperado", status: "500"));
    }
  }
}

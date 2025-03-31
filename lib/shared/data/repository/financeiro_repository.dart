import 'package:faker/faker.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_application_1/shared/data/dto/financeiro/financeiro_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:flutter_application_1/core/exceptions/app_error.dart';
import 'package:flutter_application_1/shared/data/source/financeiro_api.dart';
import 'package:flutter_application_1/shared/data/dto/financeiro/financeiro_param.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'financeiro_repository.g.dart';

@riverpod
FinanceiroRepository financeiroRepository(Ref ref) {
  final api = ref.watch(financeiroApiProvider);
  return FinanceiroRepositoryImpl(api);
}

abstract class FinanceiroRepository {
  Future<Result<IList<Fatura>, AppError>> listarFaturas(
    String grupo,
    ListFaturasParam params,
  );
}

class FinanceiroRepositoryImpl implements FinanceiroRepository {
  final FinanceiroApi _api;

  const FinanceiroRepositoryImpl(this._api);

  @override
  Future<Result<IList<Fatura>, AppError>> listarFaturas(
    String grupo,
    ListFaturasParam params,
  ) async {
    final res = await _api.listarFaturas(grupo, params);

    return res.when(
      (response) => Success(response.dados.lock),
      (e) => Error(AppError(message: e.message)),
    );
  }
}

class FinanceiroRepositoryLocalImpl implements FinanceiroRepository {
  @override
  Future<Result<IList<Fatura>, AppError>> listarFaturas(
    String grupo,
    ListFaturasParam params,
  ) async {
    await Future.delayed(Duration(milliseconds: 300));
    return Future.value(
      Success(
        List.generate(5000, (index) {
          return Fatura(
            numero: faker.randomGenerator.fromCharSet("0123456789", 12),
            status: faker.randomGenerator.element(FaturaStatus.values),
          );
        }).lock,
      ),
    );
  }
}

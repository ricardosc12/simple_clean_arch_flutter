import "package:collection/collection.dart";
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_application_1/core/extensions/riverpod_cache_extension.dart';
import 'package:flutter_application_1/shared/data/dto/financeiro/financeiro_param.dart';
import 'package:flutter_application_1/shared/data/dto/financeiro/financeiro_response.dart';
import 'package:flutter_application_1/shared/data/repository/financeiro_repository.dart';
import 'package:flutter_application_1/shared/exceptions/http_exception.dart';
import 'package:flutter_application_1/shared/view/layout/toast.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jiffy/jiffy.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fatura_controller.g.dart';

@riverpod
class ListFatura extends _$ListFatura {
  @override
  Future<IList<Fatura>> build() async {
    print("GETTING FATURAS FROM REPO");

    final ListFaturasParam params = ListFaturasParam(
      filtros: Filtros(
        periodo: Periodo(
          ini: Jiffy.now().subtract(months: 1).startOf(Unit.month).dateTime,
          fim: Jiffy.now().endOf(Unit.day).dateTime,
        ),
      ),
    );

    final data = await ref
        .watch(financeiroRepositoryProvider)
        .listarFaturas("ASA", params);

    return data.when(
      (res) {
        return res;
      },
      (e) {
        throw AppException(message: "Erro ao obter faturas").withLog();
      },
    );
  }

  void changeStatus(String numero, FaturaStatus status) {
    state.whenData((data) {
      final index = data.indexWhere((item) => item.numero == numero);
      if (index == -1) {
        ToastHelper.info("Fatura não encontrada");
        return;
      }
      state = AsyncValue.data(
        data.replace(index, data[index].copyWith(status: status)),
      );
    });
  }
}

@riverpod
Future<Map<FaturaStatus?, IList<Fatura>>> groupFaturasByStatus(Ref ref) async {
  print("FILTERING FATURAS");

  final IList<Fatura> faturas = await ref.watch(listFaturaProvider.future);

  return groupBy(
    faturas,
    (fatura) => fatura.status,
  ).map((k, v) => MapEntry(k, v.lock));
}

@Riverpod(keepAlive: false)
Future<IList<Fatura>> getFaturasByStatus(Ref ref, FaturaStatus status) async {
  print("GETTING FATURAS FROM MAP");
  ref.cacheFor(Duration(milliseconds: 3000));
  final filtedFaturas = await ref.watch(groupFaturasByStatusProvider.future);
  return filtedFaturas[status] ?? IList();
}

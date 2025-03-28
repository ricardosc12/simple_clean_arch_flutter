import 'package:flutter_application_1/feature/financeiro/controllers/fatura_controller.dart';
import 'package:flutter_application_1/feature/financeiro/dto/fatura_form_dto.dart';
import 'package:flutter_application_1/routes/app.dart';
import 'package:flutter_application_1/shared/log/log_service.dart';
import 'package:flutter_application_1/shared/view/form_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Provider.autoDispose faz com que a instância seja descartada quando ninguem estiver usando o provider;
final formFaturaProvider = Provider.autoDispose<FaturaFormController>((ref) {
  ref.onDispose(() {
    print("LIMPANDO MEMÓRIA");
  });
  return FaturaFormController(
    onSuccess: (dto) {
      ref
          .read(listFaturaProvider.notifier)
          .changeStatus(dto.numero, dto.status);

      ref.read(routeProvider).navigate(const FaturaListRoute());
    },
  );
});

class FaturaFormController extends FormController<FaturaFormDto> {
  FaturaFormController({required super.onSuccess});

  @override
  Future<FormStatus> submit() async {
    try {
      final state = formKey.currentState;

      if (state == null || !state.saveAndValidate()) {
        return FormStatus.invalid;
      }

      final values = state.value;

      onSuccess(FaturaFormDto.fromJson(values));
      return FormStatus.submitted;
    } catch (e) {
      LogService.logger.error(e);
      return FormStatus.error;
    }
  }
}

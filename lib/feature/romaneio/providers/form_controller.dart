import 'package:flutter_application_1/feature/romaneio/providers/docs_provider.dart';
import 'package:flutter_application_1/shared/domain/dto/doc.dart';
import 'package:flutter_application_1/shared/domain/dto/form_schema.dart';
import 'package:flutter_application_1/shared/domain/models/doc.dart';
import 'package:flutter_application_1/shared/log/log_service.dart';
import 'package:flutter_application_1/shared/view/form_controller.dart';
import 'package:flutter_application_1/shared/utils/validation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:luthor/luthor.dart';

enum DocFields { status, destinatario, remetente }

abstract class DocSchema {
  static final Map<DocFields, Validator> validators = {
    DocFields.status: l
        .string()
        .regex(
          FormValidations.inEnum(DocStatus.values),
          message: "Status incorreto",
        )
        .required(message: "Status obrigatório"),
    DocFields.destinatario: l
        .string(message: "Destinatário deve ser uma string")
        .min(1, message: "Destinatário obrigatório")
        .required(message: "Destinatário obrigatório"),
    DocFields.remetente: l
        .string(message: "Remetente deve ser uma string")
        .min(1, message: "Remetente obrigatório")
        .required(message: "Remetente obrigatório"),
  };

  static FormValidation? validator(DocFields field) {
    return formValidator(validators[field]);
  }
}

class DocFormController extends FormController<CreateDocDto> {
  DocFormController({required super.onSuccess});

  @override
  Future<FormStatus> submit() async {
    try {
      final state = formKey.currentState;

      if (state == null || !state.saveAndValidate()) {
        return FormStatus.invalid;
      }

      final values = state.value;

      onSuccess(CreateDocDto.fromJson(values));

      return FormStatus.submitted;
    } catch (e) {
      LogService.logger.error(e);
      return FormStatus.error;
    }
  }
}

final formDocProvider = Provider.family<DocFormController, String?>((ref, ar) {
  final docs = ref.watch(docsProvider.notifier);

  return DocFormController(
    onSuccess:
        (doc) =>
            ar != null ? docs.editDoc(ar: ar, doc: doc) : docs.addDoc(doc: doc),
  );
}, dependencies: docsProvider.allTransitiveDependencies);

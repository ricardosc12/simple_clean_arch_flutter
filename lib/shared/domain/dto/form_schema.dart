import 'package:luthor/luthor.dart';

typedef FormValidation = String? Function(dynamic value)?;

String? Function(dynamic value)? formValidator(Validator? validator) {
  if (validator == null) {
    throw UnimplementedError("form error");
  }

  return (dynamic value) {
    switch (validator.validateValue(value)) {
      case SingleValidationError(data: _, errors: final List<String> errors):
        return errors[errors.length - 1];
      case SingleValidationSuccess(data: _):
        return null;
    }
  };
}

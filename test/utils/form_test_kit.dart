import 'package:flutter_application_1/shared/domain/dto/form_schema.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luthor/luthor.dart';
import 'package:uuid/uuid.dart';

Map<String, dynamic> generatePossibleValues() {
  Map<String, dynamic> values = {};
  values["empty_str"] = "";
  values["str"] = "Valid Name";
  values["int"] = 12345;
  values["double"] = 3.14;
  values["bool"] = true;
  values["date_str"] = DateTime.now().toIso8601String();
  values["null"] = null;
  values["uuid"] = Uuid().v4();

  return values;
}

class FormTestKit<T extends Enum, D> {
  final Map<T, Validator> validators;
  final D Function(Map<String, dynamic>) fromJson;
  final Map<String, dynamic> Function() toJson;
  final List<T> fields;

  FormTestKit({
    required this.validators,
    required this.fromJson,
    required this.toJson,
    required this.fields,
  });

  void test() {
    for (var value in fields) {
      Map<String, dynamic> possibleValues = generatePossibleValues();
      List<String> possibilityTypes = [];

      for (var possibility in possibleValues.entries) {
        final possibilityKey = possibility.key;
        final possibilityValue = possibility.value;

        var isValid = false;
        try {
          isValid =
              formValidator(validators[value])?.call(possibilityValue) == null;
        } catch (e) {}

        if (isValid) {
          expect(
            () {
              final json = toJson();
              json[value.name] = possibilityValue;
              fromJson(json);
              possibilityTypes.add(possibilityKey);
            },
            returnsNormally,
            reason:
                "Field Tested: ${value.name} - Used value: $possibilityValue",
          );
        }
      }
      print(
        "Field: ${value.name} - Possibilities: ${possibilityTypes.join("|")}",
      );
    }
  }
}

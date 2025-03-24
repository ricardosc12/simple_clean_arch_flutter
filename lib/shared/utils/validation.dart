import 'package:flutter_application_1/shared/utils/enum.dart';

abstract class FormValidations {
  static String inEnum<T extends EnumUpperStatus>(List<T> data) {
    return '^${data.map((v) => v.itemValue).join("|")}';
  }
}

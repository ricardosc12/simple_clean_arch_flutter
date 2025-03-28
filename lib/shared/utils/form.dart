import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/utils/enum.dart';

abstract class FormExtensions {
  static List<DropdownMenuItem<String>> toDropdownItems(
    List<EnumUpperStatus> values,
  ) {
    return values.map<DropdownMenuItem<String>>((status) {
      return DropdownMenuItem<String>(
        value: status.toJson(),
        child: Text(status.itemLabel),
      );
    }).toList();
  }
}

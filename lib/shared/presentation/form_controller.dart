import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

abstract class FormController<T> {
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  final void Function(T data) onSuccess;

  FormController({required this.onSuccess});

  Future<bool> submit();

  void reset() {
    formKey.currentState?.reset();
  }

  bool validate() {
    return formKey.currentState?.saveAndValidate() ?? false;
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

enum FormStatus { submitted, invalid, error, success, failure }

abstract class FormController<T> {
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  final void Function(T data) onSuccess;

  FormController({required this.onSuccess});

  Future<FormStatus> submit();

  void reset() {
    formKey.currentState?.reset();
  }

  bool validate() {
    return formKey.currentState?.saveAndValidate() ?? false;
  }
}

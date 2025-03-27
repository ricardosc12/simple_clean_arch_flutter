import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/auth/providers/user_form.dart';
import 'package:flutter_application_1/shared/data/dto/auth/login_params.dart';
import 'package:flutter_application_1/shared/presentation/form_controller.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class UserForm extends StatelessWidget {
  final FormController userForm;
  final void Function(FormStatus status)? onFinalize;

  const UserForm({super.key, required this.userForm, this.onFinalize});

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      initialValue:
          LoginParam(
            usuario: "super@azapfy.com",
            senha: "Ssa@Super266",
          ).toJson(),
      key: userForm.formKey,
      child: Column(
        children: [
          FormBuilderTextField(
            name: UserFields.usuario.name,
            decoration: const InputDecoration(labelText: "CPF"),
            validator: UserSchema.validator(UserFields.usuario),
          ),
          FormBuilderTextField(
            name: UserFields.senha.name,
            decoration: const InputDecoration(labelText: "Senha"),
            validator: UserSchema.validator(UserFields.senha),
          ),
          Row(
            spacing: 14,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  userForm.reset();
                },
                child: Text("Clear"),
              ),
              ElevatedButton(
                onPressed: () {
                  userForm.submit().then((status) => onFinalize?.call(status));
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

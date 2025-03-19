import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/auth/providers/user_form.dart';
import 'package:flutter_application_1/feature/auth/providers/auth_provider.dart';
import 'package:flutter_application_1/shared/presentation/form_controller.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserForm extends StatelessWidget {
  final FormController userForm;
  final void Function(FormStatus status)? onFinalize;

  const UserForm({super.key, required this.userForm, this.onFinalize});

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: userForm.formKey,
      child: Column(
        children: [
          FormBuilderTextField(
            name: UserFields.login.name,
            decoration: const InputDecoration(labelText: "CPF"),
            validator: UserSchema.validator(UserFields.login),
          ),
          FormBuilderTextField(
            name: UserFields.password.name,
            decoration: const InputDecoration(labelText: "Senha"),
            validator: UserSchema.validator(UserFields.password),
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

final formUserProvider = Provider<UserFormController>((ref) {
  final auth = ref.watch(authProvider.notifier);
  return UserFormController(onSuccess: auth.login);
}, dependencies: authProvider.allTransitiveDependencies);

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/{{name.snakeCase()}}/view/widgets/{{name.snakeCase()}}_card_widget.dart';
import 'package:flutter_application_1/shared/view/layout/app_bar.dart';

@RoutePage()
class {{name.pascalCase()}}Page extends StatelessWidget {
  const {{name.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: DefaultAppBar(), body: {{name.pascalCase()}}Card());
  }
}

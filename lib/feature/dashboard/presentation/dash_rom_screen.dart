import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/presentation/layout/app_bar.dart';

@RoutePage()
class DashRomScreen extends StatelessWidget {
  const DashRomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: DefaultAppBar());
  }
}

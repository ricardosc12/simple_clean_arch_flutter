import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class IncidenteNavigationScreen extends StatelessWidget {
  const IncidenteNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoRouter(key: GlobalKey<AutoRouterState>());
  }
}

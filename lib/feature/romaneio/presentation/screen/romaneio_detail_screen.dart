import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/domain/models/doc.dart';
import 'package:flutter_application_1/shared/presentation/layout/app_bar.dart';

@RoutePage()
class RomaneioDetailScreen extends StatelessWidget {
  final Doc doc;

  const RomaneioDetailScreen({super.key, required this.doc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: Text(doc.ar),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/view/layout/paper.dart';

// Exemplo a ser evitado - https://docs.flutter.dev/perf/best-practices

import 'package:freezed_annotation/freezed_annotation.dart';

part 'teste.freezed.dart';
part 'teste.g.dart';

@freezed
abstract class Teste with _$Teste {
  factory Teste() = _Teste;

  factory Teste.fromJson(Map<String, dynamic> json) => _$TesteFromJson(json);
}

class ProfileTeste extends StatefulWidget {
  const ProfileTeste({super.key});

  @override
  State<ProfileTeste> createState() => _ProfileTesteState();
}

class _ProfileTesteState extends State<ProfileTeste> {
  bool status = false;
  // Exemplo a ser evitado - https://docs.flutter.dev/perf/best-practices

  changeStatus() {
    setState(() {
      status = !status;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Exemplo a ser evitado - https://docs.flutter.dev/perf/best-practices

    print("RE BUILDING");
    return Center(
      child: Paper(
        child: Column(
          children: [
            const Text("Rebuilding Teste"),
            ElevatedButton(
              onPressed: () {
                final state = Teste();
                print("state: $state");
                changeStatus();
              },
              child: const Text("Change"),
            ),
            Text(DateTime.now().toString()),
          ],
        ),
      ),
    );
  }
}

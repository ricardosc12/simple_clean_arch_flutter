import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/view/layout/paper.dart';

// Exemplo a ser evitado - https://docs.flutter.dev/perf/best-practices

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

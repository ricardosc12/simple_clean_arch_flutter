import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/view/layout/paper.dart';

// Exemplo a ser evitado

class ProfileTeste extends StatefulWidget {
  const ProfileTeste({super.key});

  @override
  State<ProfileTeste> createState() => _ProfileTesteState();
}

class _ProfileTesteState extends State<ProfileTeste> {
  bool status = false;

  changeStatus() {
    setState(() {
      status = !status;
    });
  }

  @override
  Widget build(BuildContext context) {
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

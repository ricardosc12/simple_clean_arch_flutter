import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/app.dart';
import 'package:flutter_application_1/shared/domain/models/doc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DocWidget extends StatelessWidget {
  final Doc doc;

  const DocWidget({super.key, required this.doc});

  String getDate() {
    final date = DateTime.now();

    return date.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(doc.ar),
            () {
              final date = getDate();
              return Text(date);
            }(),
            Consumer(
              builder:
                  (_, ref, _) => OutlinedButton(
                    onPressed: () {
                      ref
                          .read(routeProvider)
                          .navigate(RomaneioDetailRoute(doc: doc));
                    },
                    child: const Text("Detail"),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

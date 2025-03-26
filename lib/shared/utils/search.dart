import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../feature/listing/presentation/screen/metahuman_list_screen.dart';

Widget search(String label, WidgetRef ref) {
  return Container(
    padding: const EdgeInsets.all(5.0),
    child: TextField(
      onChanged: (value) {
        ref.read(searchProvider.notifier).state = value;
      },
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(Icons.search),
      ),
    ),
  );
}

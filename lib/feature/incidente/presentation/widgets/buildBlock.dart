import 'package:flutter/material.dart';
import 'dart:ui';

Widget buildBlock(
  String title,
  String count,
  Color colorBackground,
  Color colorText,
) {
  return Container(
    width: 200,
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: colorBackground,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          count,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: colorText,
          ),
        ),
        SizedBox(height: 4),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: colorText,
          ),
        ),
      ],
    ),
  );
}

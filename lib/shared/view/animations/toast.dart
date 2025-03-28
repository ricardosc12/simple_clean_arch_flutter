import 'package:flutter/material.dart';

Widget toastAnimation(context, child, controller, percent) {
  final slideAnimation = Tween<Offset>(
    begin: const Offset(1.0, 0),
    end: Offset.zero,
  ).animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));

  final opacityAnimation = Tween<double>(
    begin: 0.5,
    end: 1.0,
  ).animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));

  return SlideTransition(
    position: slideAnimation,
    child: FadeTransition(opacity: opacityAnimation, child: child),
  );
}

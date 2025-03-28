import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingProgress extends StatelessWidget {
  final double size; 
  const LoadingProgress({super.key, this.size = 100});

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.waveDots(color: const Color(0xFFFF7418), size: size);
  }
}
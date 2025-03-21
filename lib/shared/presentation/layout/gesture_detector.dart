import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/presentation/layout/notify_panel/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GesturesDetector extends ConsumerWidget {
  final Widget child;
  const GesturesDetector({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double dragThreshold = 30.0;
    double startPosition = 0.0;
    bool canTrigger = false;

    return GestureDetector(
      onVerticalDragStart: (details) {
        if (details.globalPosition.dy >=
            MediaQuery.of(context).size.height - 80) {
          startPosition = details.globalPosition.dy;
          canTrigger = true;
        }
      },
      onVerticalDragUpdate: (details) {
        if (canTrigger &&
            (startPosition - details.globalPosition.dy) > dragThreshold) {
          ref.read(painelProvider).open();
          canTrigger = false;
        }
      },
      onVerticalDragEnd: (_) {
        canTrigger = false;
      },
      child: child,
    );
  }
}

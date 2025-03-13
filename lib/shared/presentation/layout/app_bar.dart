import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/presentation/guards/user_header.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  DefaultAppBar({super.key}) : preferredSize = Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    final bool canPop = Navigator.of(context).canPop();

    return AppBar(
      backgroundColor: const Color(0xFFFF7418),
      leading:
          canPop
              ? IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              )
              : null,
      title: Image.asset("logo.png", width: 130, height: 50),
      actions: [
        Padding(padding: EdgeInsets.only(right: 10), child: UserHeader()),
      ],
    );
  }
}

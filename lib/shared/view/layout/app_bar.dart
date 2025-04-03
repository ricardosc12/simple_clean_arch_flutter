import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/view/guards/user_header.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final PreferredSizeWidget? bottom;
  final Widget? flexibleSpace;
  DefaultAppBar({super.key, this.bottom, this.flexibleSpace})
    : preferredSize = Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    final bool canPop =
        context.topRoute.path.isNotEmpty &&
        context.topRoute.parent?.name != "MainLayoutRoute";

    return AppBar(
      backgroundColor: const Color(0xFFFF7418),
      automaticallyImplyLeading: false,
      leading:
          canPop
              ? IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => context.router.back(),
              )
              : null,
      title: Image.asset("logo.png", width: 130, height: 50),
      bottom: bottom,
      flexibleSpace: flexibleSpace,
      actions: [
        Padding(padding: EdgeInsets.only(right: 10), child: UserHeader()),
      ],
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/profile/view/widgets/profile_card_widget.dart';
import 'package:flutter_application_1/shared/view/layout/app_bar.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: DefaultAppBar(), body: ProfileCard());
  }
}

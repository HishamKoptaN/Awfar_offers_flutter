import 'package:flutter/material.dart';

import 'widgets/settings_view_body.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key, required this.isBack});

  final bool isBack;

  static const String routeName = 'settings_view';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SettingsViewBody(
          isBack: isBack,
        ),
      ),
    );
  }
}

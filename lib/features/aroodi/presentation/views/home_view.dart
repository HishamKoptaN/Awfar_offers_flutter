import 'package:aroodi_app/core/utils/app_colors.dart';
import 'package:aroodi_app/features/aroodi/presentation/views/aroodi_view.dart';
import 'package:aroodi_app/features/aroodi/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.darkPrimaryColor,
        body: AroodiView(),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}

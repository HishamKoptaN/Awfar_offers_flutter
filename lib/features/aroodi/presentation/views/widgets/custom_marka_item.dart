import 'package:aroodi_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomMarkaItem extends StatelessWidget {
  const CustomMarkaItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 23,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        backgroundColor: AppColors.primaryColor,
        backgroundImage: AssetImage("assets/images/royal_house.jpeg"),
        radius: 22,
      ),
    );
  }
}

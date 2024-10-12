import 'package:aroodi_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomMarkaItem extends StatelessWidget {
  const CustomMarkaItem({
    super.key,
    required this.radius1,
    required this.radius2,
  });

  final double radius1, radius2;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius1,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        backgroundColor: AppColors.primaryColor,
        backgroundImage: const AssetImage("assets/images/royal_house.jpeg"),
        radius: radius2,
      ),
    );
  }
}

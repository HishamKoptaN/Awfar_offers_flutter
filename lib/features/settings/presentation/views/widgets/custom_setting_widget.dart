import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomSettingWidget extends StatelessWidget {
  CustomSettingWidget({
    super.key,
    required this.title,
    required this.onTap,
  });
  final String title;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColors.lightPrimaryColor,
            )
          ],
        ),
      ),
    );
  }
}

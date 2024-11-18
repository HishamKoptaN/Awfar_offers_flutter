import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class ToolsWidget extends StatelessWidget {
  const ToolsWidget({
    super.key,
    required this.iconData,
    required this.title,
  });

  final IconData iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              iconData,
              color: AppColors.yellowColor,
              size: 24,
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

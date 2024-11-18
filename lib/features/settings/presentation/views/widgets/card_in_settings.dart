import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class CardInSettings extends StatelessWidget {
  const CardInSettings({
    super.key,
    required this.iconWidget,
    required this.title,
    required this.subTitle,
  });
  final Widget iconWidget;
  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        color: AppColors.primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    subTitle,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              iconWidget,
            ],
          ),
        ),
      ),
    );
  }
}

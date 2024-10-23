import 'package:aroodi_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem({
    super.key,
    required this.selectedIndex,
    required this.index,
  });

  final int selectedIndex, index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: selectedIndex == index
              ? AppColors.lightPrimaryColor
              : AppColors.primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "سوبر ماركت",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                width: 4,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.lightPrimaryColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text("87"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

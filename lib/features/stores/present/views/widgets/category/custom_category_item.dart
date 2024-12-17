import 'package:flutter/material.dart';
import '../../../../../../core/models/category.dart';
import '../../../../../../core/utils/app_colors.dart';

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem({
    super.key,
    required this.selectedIndex,
    required this.index,
    required this.category,
  });

  final int selectedIndex;
  final int index;
  final Category category;
  @override
  Widget build(
    context,
  ) {
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
              Text(
                category.name!,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.lightPrimaryColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    category.name.toString(),
                    // category.subCategoryOffersCount.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

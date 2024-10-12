import 'package:aroodi_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ActiveCategory extends StatelessWidget {
  const ActiveCategory({super.key, required this.categoryName});

  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
        border: Border(
          right: BorderSide(
            color: AppColors.lightPrimaryColor,
            width: 4,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            categoryName,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class InActiveCategory extends StatelessWidget {
  const InActiveCategory({super.key, required this.categoryName});

  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          categoryName,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

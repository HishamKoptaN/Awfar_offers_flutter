import 'package:awfar_offer_app/core/widgets/custom_back_button.dart';
import 'package:flutter/material.dart';

import '../../../../../core/models/sub_category.dart';
import '../../../../../core/utils/app_colors.dart';

class AppBarInSubCategory extends StatelessWidget {
  const AppBarInSubCategory({
    super.key,
    required this.category,
  });

  final SubCategory category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const CustomBackButton(),
          Container(
            height: 34,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 4,
                ),
                Image.network(
                  category.image.toString(),
                  width: 20,
                  height: 30,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  category.name.toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 4,
                ),
                const Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: AppColors.lightPrimaryColor,
                  size: 20,
                ),
                const SizedBox(
                  width: 4,
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            height: 34,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "بحث",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(
                    Icons.search_outlined,
                    color: AppColors.lightPrimaryColor,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

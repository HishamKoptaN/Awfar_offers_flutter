import 'package:aroodi_app/core/utils/app_colors.dart';
import 'package:aroodi_app/features/offers/presentation/views/widgets/category/custom_category_item.dart';
import 'package:flutter/material.dart';

import '../../../../data/models/offers_response_model.dart';

class CustomCategoryItemListView extends StatelessWidget {
  CustomCategoryItemListView({
    super.key,
    required this.categories,
  });
  List<Category>? categories;
  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.only(right: 2),
      child: Row(
        children: [
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: AppColors.lightPrimaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Text(
                "جميع",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index) {
                  final category = categories![index];
                  return CustomCategoryItem(
                    category: category,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

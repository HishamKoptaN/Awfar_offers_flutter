import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/singletons/categories_singleton.dart';
import '../../../../../../core/utils/app_colors.dart';
import 'custom_category_item.dart';

class CustomCategoryItemListView extends StatefulWidget {
  const CustomCategoryItemListView({
    super.key,
    required this.onCategorySelected,
  });
  final Function(int) onCategorySelected;
  @override
  State<CustomCategoryItemListView> createState() =>
      _CustomCategoryItemListViewState();
}

class _CustomCategoryItemListViewState
    extends State<CustomCategoryItemListView> {
  int _selectedIndex = -1;

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.only(right: 2),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(
                () {
                  _selectedIndex = -1;
                },
              );
              widget.onCategorySelected(-1);
            },
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: _selectedIndex == -1
                    ? AppColors.lightPrimaryColor
                    : AppColors.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Text(
                  "جميع",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 30.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: CategoriesSingleton.instance.categories.length,
                itemBuilder: (context, index) {
                  final category =
                      CategoriesSingleton.instance.categories[index];
                  return GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          _selectedIndex = index;
                        },
                      );
                      widget.onCategorySelected(
                        category.id!,
                      );
                    },
                    child: CustomCategoryItem(
                      category: category,
                      selectedIndex: _selectedIndex,
                      index: index,
                    ),
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

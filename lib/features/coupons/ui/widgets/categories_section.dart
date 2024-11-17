import 'package:flutter/material.dart';
import 'package:aroodi_app/core/utils/app_colors.dart';

class CategoriesSection extends StatefulWidget {
  final Function(int) onCategorySelected;
  const CategoriesSection({super.key, required this.onCategorySelected});

  @override
  State<CategoriesSection> createState() => _CategoriesSectionState();
}

class _CategoriesSectionState extends State<CategoriesSection> {
  int _selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 2),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = -1;
                widget.onCategorySelected(-1);
              });
            },
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: _selectedIndex == -1
                    ? AppColors.lightPrimaryColor
                    : AppColors.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Text(
                    "جميع",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = -2;
                widget.onCategorySelected(-2);
              });
            },
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: _selectedIndex == -2
                    ? AppColors.lightPrimaryColor
                    : AppColors.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 8,
                  ),
                  child: Icon(
                    Icons.favorite_border_outlined,
                    color: _selectedIndex == -2
                        ? Colors.white
                        : AppColors.lightPrimaryColor,
                  ),
                ),
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
                  // final category = widget.categories![index];
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                      // widget.onCategorySelected(category.id);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: _selectedIndex == index
                              ? AppColors.lightPrimaryColor
                              : AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          child: Text(
                            "الأزياء",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
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

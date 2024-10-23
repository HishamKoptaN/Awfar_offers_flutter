import 'package:aroodi_app/core/utils/app_colors.dart';
import 'package:aroodi_app/features/offers/presentation/views/widgets/custom_category_item.dart';
import 'package:flutter/material.dart';

class CustomCategoryItemListView extends StatefulWidget {
  const CustomCategoryItemListView({
    super.key,
  });

  @override
  State<CustomCategoryItemListView> createState() =>
      _CustomCategoryItemListViewState();
}

class _CustomCategoryItemListViewState
    extends State<CustomCategoryItemListView> {
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
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: CustomCategoryItem(
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

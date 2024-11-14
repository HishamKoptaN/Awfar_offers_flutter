import 'package:aroodi_app/features/categories/presentation/views/widgets/app_bar_in_category.dart';
import 'package:aroodi_app/features/categories/presentation/views/widgets/categories_list_view_and_grid_view.dart';
import 'package:flutter/material.dart';

import '../../../data/models/categories_response_model.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({
    super.key,
    required this.brandName,
    required this.categories,
  });
  final String brandName;
  final List<CategoriesResponseModel> categories;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBarInCategory(
          brandName: brandName,
        ),
        ListViewAndGridView(
          categories: categories,
        ),
      ],
    );
  }
}

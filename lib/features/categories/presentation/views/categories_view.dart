import 'package:aroodi_app/features/categories/presentation/views/widgets/category_view_body.dart';
import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key, required this.brandName});
  static const String routeName = 'categories_view';
  final String brandName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CategoryViewBody(
          brandName: brandName,
        ),
      ),
    );
  }
}

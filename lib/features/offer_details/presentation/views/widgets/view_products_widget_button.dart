import 'package:flutter/material.dart';
import '../../../../categories/present/views/categories_view.dart';

class ViewProductsWidgetButton extends StatelessWidget {
  const ViewProductsWidgetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            CategoriesView.routeName,
            arguments: "رويال هاوس",
          );
        },
        child: const Row(
          children: [
            Icon(
              Icons.category_outlined,
              color: Colors.white,
              size: 18,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "مشاهدة المنتجات",
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

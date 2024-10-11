import 'package:aroodi_app/features/aroodi/presentation/views/widgets/custom_card_item.dart';
import 'package:flutter/material.dart';

class CardItemsGridView extends StatelessWidget {
  const CardItemsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(), // Disable grid scroll
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns in the grid
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.58,
      ),
      // delegate: SliverChildBuilderDelegate(
      //   (BuildContext context, int index) {
      //     return const CustomCardItem();
      //   },
      //   childCount: 10, // Number of grid items
      // ),
      itemCount: 20,
      itemBuilder: (context, index) {
        return const CustomCardItem();
      },
    );
  }
}

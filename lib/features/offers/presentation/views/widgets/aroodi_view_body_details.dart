import 'package:aroodi_app/features/admobe/banner_ad.dart';
import 'package:aroodi_app/features/offers/presentation/views/widgets/card_items_grid_view.dart';
import 'package:aroodi_app/features/offers/presentation/views/widgets/custom_category_item_list_view.dart';
import 'package:aroodi_app/features/offers/presentation/views/widgets/custom_marka_item_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AroodiViewBodyDetails extends StatelessWidget {
  const AroodiViewBodyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomCategoryItemListView(),
          SizedBox(
            height: 12,
          ),
          CustomMarkaItemListView(),
          SizedBox(
            height: 8,
          ),
          BannerAds(),
          CardItemsGridView(),
          SizedBox(
            height: 16,
          ),
          BannerAds(),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

import 'package:aroodi_app/features/offers/presentation/views/widgets/category/custom_category_item_list_view.dart';
import 'package:aroodi_app/features/offers/presentation/views/widgets/store/custom_marka_item_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../admobe/banner_ad.dart';
import '../../../data/models/offers_response_model.dart';
import 'items/card_items_grid_view.dart';

class AroodiViewBodyDetails extends StatelessWidget {
  AroodiViewBodyDetails({
    super.key,
    required this.offers,
    required this.categories,
  });
  List<Offer> offers;
  List<Category> categories;
  @override
  Widget build(context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomCategoryItemListView(
            categories: categories,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomMarkaItemListView(
            stores: null,
          ),
          const SizedBox(
            height: 8,
          ),
          CardItemsGridView(
            offers: offers,
          ),
          const SizedBox(),
          BannerAds(),
          CardItemsGridView(
            offers: [],
          ),
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

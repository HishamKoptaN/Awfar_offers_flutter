import 'package:aroodi_app/features/offers/presentation/views/widgets/category/custom_category_item_list_view.dart';
import 'package:aroodi_app/features/offers/presentation/views/widgets/store/custom_marka_item_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../admobe/banner_ad.dart';
import '../../../data/models/offers_response_model.dart';
import 'items/card_items_grid_view.dart';

class AroodiViewBodyDetails extends StatefulWidget {
  const AroodiViewBodyDetails({
    super.key,
    required this.offersResponseModel,
  });
  final OffersResponseModel offersResponseModel;

  @override
  State<AroodiViewBodyDetails> createState() => _AroodiViewBodyDetailsState();
}

class _AroodiViewBodyDetailsState extends State<AroodiViewBodyDetails> {
  int _selectedCategoryId = -1;
  @override
  Widget build(context) {
    final filteredCategories = _selectedCategoryId == -1
        ? widget.offersResponseModel.categories // إظهار جميع الفئات
        : widget.offersResponseModel.categories
            .where((category) => category.id == _selectedCategoryId)
            .toList(); // إظهار العروض المتوافقة

    return SingleChildScrollView(
      child: Column(
        children: [
          CustomCategoryItemListView(
            categories: widget.offersResponseModel.categories,
            onCategorySelected: (id) {
              setState(() {
                _selectedCategoryId = id;
              });
            },
          ),
          const SizedBox(
            height: 12,
          ),
          CustomMarkaItemListView(
            stores: widget.offersResponseModel.stores,
          ),
          const SizedBox(
            height: 8,
          ),
          CardItemsGridView(
            offersResponseModel: widget.offersResponseModel,
            categories: filteredCategories,
          ),
          const SizedBox(
            height: 16,
          ),
          const BannerAds(),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

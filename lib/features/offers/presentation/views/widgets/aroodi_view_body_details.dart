import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../admobe/banner_ad.dart';
import '../../../data/models/offers_response_model.dart';
import 'category/custom_category_item_list_view.dart';
import 'items/offers_card_items_grid_view.dart';
import 'store/custom_marka_item_list_view.dart';

class AroodiViewBodyDetails extends StatefulWidget {
  AroodiViewBodyDetails({
    super.key,
    required this.offersResponseModel,
    required this.offers,
    required this.favorites,
  });
  OffersResponseModel offersResponseModel;
  final List<OffersResponseModelOffer> offers;
  final List<int> favorites;
  @override
  State<AroodiViewBodyDetails> createState() => _AroodiViewBodyDetailsState();
}

class _AroodiViewBodyDetailsState extends State<AroodiViewBodyDetails> {
  int? _selectedCategoryId;

  @override
  void initState() {
    super.initState();
    _selectedCategoryId = widget.offersResponseModel.categories!.first.id;
  }

  @override
  Widget build(context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomCategoryItemListView(
            categories: widget.offersResponseModel.categories,
            onCategorySelected: (id) {
              setState(
                () {
                  _selectedCategoryId = id;
                },
              );
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
          OffersItemsGridView(
            stores: widget.offersResponseModel.stores!,
            offers: _selectedCategoryId != null
                ? widget.offers
                    .where(
                      (offer) =>
                          offer.subCategory!.categoryId == _selectedCategoryId,
                    )
                    .toList()
                : widget.offers,
            favorites: widget.favorites,
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

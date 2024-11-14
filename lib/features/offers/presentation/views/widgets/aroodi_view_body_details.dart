import 'package:aroodi_app/features/offers/presentation/views/widgets/category/custom_category_item_list_view.dart';
import 'package:aroodi_app/features/offers/presentation/views/widgets/store/custom_marka_item_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../admobe/banner_ad.dart';
import '../../../data/models/offers_response_model.dart';
import 'items/offers_card_items_grid_view.dart';

class AroodiViewBodyDetails extends StatefulWidget {
  AroodiViewBodyDetails({
    super.key,
    required this.offersResponseModel,
  });
  OffersResponseModel offersResponseModel;
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
            offersResponseModel: widget.offersResponseModel,
            offers: _selectedCategoryId != null
                ? widget.offersResponseModel.offers!
                    .where(
                      (offer) =>
                          offer.subCategory!.categoryId == _selectedCategoryId,
                    )
                    .toList()
                : widget.offersResponseModel.offers!,
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

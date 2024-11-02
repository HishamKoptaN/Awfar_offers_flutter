import 'package:aroodi_app/features/offer_details/presentation/views/offer_deatails_view.dart';
import 'package:aroodi_app/features/offers/presentation/views/widgets/items/custom_card_item.dart';
import 'package:flutter/material.dart';

import '../../../../data/models/offers_response_model.dart';

class CardItemsGridView extends StatelessWidget {
  const CardItemsGridView({
    super.key,
    required this.offersResponseModel,
    required this.categories,
  });
  final OffersResponseModel offersResponseModel;
  final List<Category> categories;

  @override
  Widget build(context) {
    List<Offer> offersList = [];

    for (var category in categories) {
      for (var offer in category.offers) {
        offersList.add(offer);
      }
    }

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(), // Disable grid scroll
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns in the grid
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.58,
      ),
      itemCount: offersList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            int storeId = offersList[index].storeId; // ضع هنا storeId المطلوب
            final selectedStore = offersResponseModel.stores.firstWhere(
              (store) => store.id == storeId,
            );
            Navigator.pushNamed(
              context,
              OfferDeatailsView.routeName,
              arguments: selectedStore,
            );
          },
          child: CustomCardItem(
            offer: offersList[index],
            stores: offersResponseModel.stores,
            index: index,
          ),
        );
      },
    );
  }
}

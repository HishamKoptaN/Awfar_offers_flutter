import 'package:flutter/material.dart';
import '../../../../../offer_details/presentation/views/offer_deatails_view.dart';
import '../../../../data/models/offers_response_model.dart';
import 'custom_offer_card_item.dart';

class OffersItemsGridView extends StatelessWidget {
  const OffersItemsGridView({
    super.key,
    required this.stores,
    required this.offers,
    required this.favorites,
  });
  final List<StoreElement> stores;
  final List<OffersResponseModelOffer> offers;
  final List<int> favorites;

  @override
  Widget build(context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(), // Disable grid scroll
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns in the grid
        crossAxisSpacing: 6,
        mainAxisSpacing: 6,
        childAspectRatio: 0.58,
      ),
      itemCount: offers.length,
      itemBuilder: (context, index) {
        final offer = offers[index];
        return GestureDetector(
          onTap: () {
            StoreElement selectedStore = stores.firstWhere(
              (store) => store.id == offer.store!.id,
            );
            Navigator.pushNamed(
              context,
              OfferDeatailsView.routeName,
              arguments: selectedStore,
            );
          },
          child: CustomCardItem(
            offersResponseModelOffer: offer,
            isFav: favorites.contains(
              offer.id,
            ),
          ),
        );
      },
    );
  }
}

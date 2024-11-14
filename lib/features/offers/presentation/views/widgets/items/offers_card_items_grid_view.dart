import 'package:aroodi_app/features/offers/presentation/views/widgets/items/custom_offer_card_item.dart';
import 'package:flutter/material.dart';
import '../../../../../offer_details/presentation/views/offer_deatails_view.dart';
import '../../../../data/models/offers_response_model.dart';

class OffersItemsGridView extends StatelessWidget {
  const OffersItemsGridView({
    super.key,
    required this.offersResponseModel,
    required this.offers,
  });
  final OffersResponseModel offersResponseModel;
  final List<OffersResponseModelOffer> offers;
  @override
  Widget build(context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(), // Disable grid scroll
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns in the grid
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.58,
      ),
      itemCount: offers.length,
      itemBuilder: (context, index) {
        final offer = offersResponseModel.offers![index];
        return GestureDetector(
          onTap: () {
            StoreElement selectedStore = offersResponseModel.stores!.firstWhere(
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
          ),
        );
      },
    );
  }
}

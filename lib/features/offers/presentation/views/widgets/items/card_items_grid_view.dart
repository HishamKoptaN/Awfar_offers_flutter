import 'package:aroodi_app/features/offer_details/presentation/views/offer_deatails_view.dart';
import 'package:aroodi_app/features/offers/presentation/views/widgets/items/custom_card_item.dart';
import 'package:flutter/material.dart';

import '../../../../data/models/offers_response_model.dart';

class CardItemsGridView extends StatelessWidget {
  CardItemsGridView({
    super.key,
    required this.offers,
  });
  List<Offer> offers;
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
        final offer = offers[index];
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              OfferDeatailsView.routeName,
            );
          },
          child: CustomCardItem(
            offer: offer,
          ),
        );
      },
    );
  }
}

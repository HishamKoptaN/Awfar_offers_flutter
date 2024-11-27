import 'package:flutter/material.dart';

import '../../../../offers/data/models/offers_response_model.dart';
import 'app_bar_in_offer_details.dart';
import 'offers_grid_view.dart';
import 'text_and_share_notification_icon.dart';

class OfferDetailsViewBody extends StatelessWidget {
  const OfferDetailsViewBody({
    super.key,
    required this.storeElement,
  });

  final StoreElement storeElement;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          AppBarInOfferDetails(
            title: storeElement.name!,
            urlImage: storeElement.image!,
          ),
          // const ViewProductsWidgetButton(),
          TextAndShareAndNotificationIcon(
            image: storeElement.image!,
            offerLink: "https://pub.dev/packages/share_plus",
            title: "فتح الله",
          ),
          const SizedBox(
            height: 24,
          ),
          OffersGridView(storeElement: storeElement),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}

import 'package:aroodi_app/features/offer_details/presentation/views/widgets/app_bar_in_offer_details.dart';
import 'package:aroodi_app/features/offer_details/presentation/views/widgets/offers_grid_view.dart';
import 'package:aroodi_app/features/offer_details/presentation/views/widgets/text_and_share_notification_icon.dart';
import 'package:aroodi_app/features/offers/data/models/offers_response_model.dart';
import 'package:flutter/material.dart';

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
          const TextAndShareAndNotificationIcon(),
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

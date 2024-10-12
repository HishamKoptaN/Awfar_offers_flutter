import 'package:aroodi_app/features/offer_details/presentation/views/widgets/app_bar_in_offer_details.dart';
import 'package:aroodi_app/features/offer_details/presentation/views/widgets/offers_grid_view.dart';
import 'package:aroodi_app/features/offer_details/presentation/views/widgets/text_and_share_notification_icon.dart';
import 'package:aroodi_app/features/offer_details/presentation/views/widgets/view_products_widget_button.dart';
import 'package:flutter/material.dart';

class OfferDetailsViewBody extends StatelessWidget {
  const OfferDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 8,
          ),
          AppBarInOfferDetails(),
          ViewProductsWidgetButton(),
          TextAndShareAndNotificationIcon(),
          SizedBox(
            height: 24,
          ),
          OffersGridView(),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}

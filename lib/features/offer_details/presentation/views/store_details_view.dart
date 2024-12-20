import 'package:flutter/material.dart';
import '../../../../core/models/store.dart';
import 'widgets/app_bar_in_offer_details.dart';
import 'widgets/offers_grid_view.dart';
import 'widgets/text_and_share_notification_icon.dart';

class StoreDetailsView extends StatelessWidget {
  const StoreDetailsView({
    super.key,
    required this.store,
  });
  static const String routeName = 'store_details';
  final Store store;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              AppBarInOfferDetails(
                title: store.name!,
                urlImage: store.image!,
              ),
              // const ViewProductsWidgetButton(),
              TextAndShareAndNotificationIcon(
                image: store.image!,
                offerLink: store.image!,
                title: store.name!,
              ),
              const SizedBox(
                height: 24,
              ),
              OffersGridView(
                store: store,
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

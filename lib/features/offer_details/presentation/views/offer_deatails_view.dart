import 'package:aroodi_app/features/offer_details/presentation/views/widgets/offer_details_view_body.dart';
import 'package:aroodi_app/features/offers/data/models/offers_response_model.dart';
import 'package:flutter/material.dart';

class OfferDeatailsView extends StatelessWidget {
  const OfferDeatailsView({
    super.key,
    required this.storeElement,
  });
  static const String routeName = 'offer_details';
  final StoreElement storeElement;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: OfferDetailsViewBody(
          storeElement: storeElement,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../offers/data/models/offers_response_model.dart';
import 'widgets/offer_details_view_body.dart';

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

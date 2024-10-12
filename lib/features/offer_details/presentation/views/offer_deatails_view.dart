import 'package:aroodi_app/features/offer_details/presentation/views/widgets/offer_details_view_body.dart';
import 'package:flutter/material.dart';

class OfferDeatailsView extends StatelessWidget {
  const OfferDeatailsView({super.key});

  static const String routeName = 'offer_details';

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: OfferDetailsViewBody(),
      ),
    );
  }
}

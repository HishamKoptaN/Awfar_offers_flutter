import 'package:aroodi_app/features/offers/presentation/views/widgets/aroodi_view_body.dart';
import 'package:flutter/material.dart';

class OfferView extends StatelessWidget {
  const OfferView({super.key});
  static const routeName = 'aroodi';

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: OfferViewBody(),
      ),
    );
  }
}

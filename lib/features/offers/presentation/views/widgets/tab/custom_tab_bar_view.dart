import 'package:aroodi_app/features/offers/presentation/views/widgets/aroodi_view_body_details.dart';
import 'package:flutter/material.dart';
import '../../../../data/models/offers_response_model.dart';

class CustomTabBarView extends StatelessWidget {
  CustomTabBarView({
    super.key,
    required this.offers,
    required this.categories,
  });
  List<Offer> offers;
  List<Category> categories;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height - 240;
    return SizedBox(
      height: screenHeight,
      child: TabBarView(
        children: [
          AroodiViewBodyDetails(
            offers: offers,
            categories: [],
          ),
          AroodiViewBodyDetails(
            offers: offers,
            categories: [],
          ),
          AroodiViewBodyDetails(
            offers: offers,
            categories: [],
          ),
          AroodiViewBodyDetails(
            offers: offers,
            categories: [],
          ),
        ],
      ),
    );
  }
}

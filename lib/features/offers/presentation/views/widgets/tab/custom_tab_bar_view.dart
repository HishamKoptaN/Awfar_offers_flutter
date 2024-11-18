import 'package:flutter/material.dart';

import '../../../../data/models/offers_response_model.dart';
import '../aroodi_view_body_details.dart';

class CustomTabBarView extends StatelessWidget {
  CustomTabBarView({
    super.key,
    required this.offersResponseModel,
  });
  OffersResponseModel offersResponseModel;
  @override
  Widget build(context) {
    double screenHeight = MediaQuery.of(context).size.height - 240;
    return SizedBox(
      height: screenHeight,
      child: TabBarView(
        children: [
          // Top
          AroodiViewBodyDetails(
            offersResponseModel: offersResponseModel,
          ),
          // Favorites
          AroodiViewBodyDetails(
            offersResponseModel: offersResponseModel,
          ),
          // Nearer
          AroodiViewBodyDetails(
            offersResponseModel: offersResponseModel,
          ),
          // Recentley
          AroodiViewBodyDetails(
            offersResponseModel: offersResponseModel,
          ),
        ],
      ),
    );
  }
}

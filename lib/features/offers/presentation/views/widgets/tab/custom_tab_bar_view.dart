import 'package:flutter/material.dart';
import '../../../../data/models/offers_response_model.dart';
import '../aroodi_view_body_details.dart';

class CustomTabBarView extends StatelessWidget {
  CustomTabBarView({
    super.key,
    required this.offersResponseModel,
    required this.favorites,
  });
  OffersResponseModel offersResponseModel;
  List<int> favorites;
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
            offers: offersResponseModel.offers!,
            favorites: favorites,
          ),
          // Favorites
          AroodiViewBodyDetails(
            offersResponseModel: offersResponseModel,
            offers: offersResponseModel.offers!.where(
              (offer) {
                return offer.id != null && favorites.contains(offer.id);
              },
            ).toList(),
            favorites: favorites,
          ),
          // Nearer
          AroodiViewBodyDetails(
            offersResponseModel: offersResponseModel,
            offers: offersResponseModel.offers!,
            favorites: favorites,
          ),
          // Recentley
          AroodiViewBodyDetails(
            offersResponseModel: offersResponseModel,
            offers: offersResponseModel.offers!,
            favorites: favorites,
          ),
        ],
      ),
    );
  }
}

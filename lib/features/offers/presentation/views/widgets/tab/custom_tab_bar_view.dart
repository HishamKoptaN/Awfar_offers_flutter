import 'package:flutter/material.dart';
import '../../../../../../core/singletons/favs_offers_singleton.dart';
import '../../../../../../core/singletons/stores_singleton.dart';
import '../aroodi_view_body_details.dart';

class CustomTabBarView extends StatelessWidget {
  const CustomTabBarView({
    super.key,
  });
  @override
  Widget build(context) {
    double screenHeight = MediaQuery.of(context).size.height - 240;
    return SizedBox(
      height: screenHeight,
      child: TabBarView(
        children: [
          // Top
          AroodiViewBodyDetails(
            stores: StoresSingleton.instance.stores,
          ),
          // Favorites
          AroodiViewBodyDetails(
            stores: StoresSingleton.instance.stores.where(
              (offer) {
                return offer.id != null &&
                    FavsOffersSingleton.instance.favs!.contains(
                      offer.id,
                    );
              },
            ).toList(),
          ),
          // Nearer
          AroodiViewBodyDetails(
            stores: StoresSingleton.instance.stores,
          ),
          // Recentley
          AroodiViewBodyDetails(
            stores: StoresSingleton.instance.stores,
          ),
        ],
      ),
    );
  }
}

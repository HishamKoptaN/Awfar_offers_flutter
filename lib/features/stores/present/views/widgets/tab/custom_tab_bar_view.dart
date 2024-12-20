import 'package:flutter/material.dart';
import '../../../../../../core/singletons/favs/fav_offers_singleton.dart';
import '../../../../../../core/singletons/favs/fav_stores_singleton.dart';
import '../../../../../../core/singletons/stores_singleton.dart';
import '../stores_view_body_details.dart';

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
          // Recentley
          StoresViewBodyDetails(
            stores: StoresSingleton.instance.stores,
          ),
          // Favorites
          StoresViewBodyDetails(
            stores: StoresSingleton.instance.stores.where(
              (store) {
                return store.id != null &&
                    FavsStoresSingleton.instance.favs!.contains(
                      store.id,
                    );
              },
            ).toList(),
          ),
        ],
      ),
    );
  }
}

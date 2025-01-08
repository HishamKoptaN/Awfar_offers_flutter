import 'package:flutter/material.dart';
import '../../../../../../core/singletons/favs/fav_stores_singleton.dart';
import '../../../../../../core/singletons/stores_singleton.dart';
import '../stores_view_body_details.dart';

class CustomTabBarView extends StatelessWidget {
  const CustomTabBarView({
    super.key,
    required this.crossAxisCount,
    required this.childAspectRatio,
    required this.width,
  });
  final int crossAxisCount;
  final double childAspectRatio;
  final double width;
  @override
  Widget build(context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight,
      child: TabBarView(
        children: [
          // Recentley
          StoresViewBodyDetails(
            stores: StoresSingleton.instance.stores,
            childAspectRatio: childAspectRatio,
            crossAxisCount: crossAxisCount,
            width: width,
          ),
          // Favorites
          StoresViewBodyDetails(
            childAspectRatio: childAspectRatio,
            crossAxisCount: crossAxisCount,
            width: width,
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

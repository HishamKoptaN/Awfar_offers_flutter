import 'package:awfar_offer_app/features/admobe/native_ad_manager.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/models/store.dart';
import '../../../../../../core/singletons/favs/fav_stores_singleton.dart';
import '../../../../../offer_details/presentation/views/store_details_view.dart';
import 'custom_store_card_item.dart';

class StoresItemsGridView extends StatelessWidget {
  const StoresItemsGridView({
    super.key,
    required this.stores,
    required this.crossAxisCount,
    required this.childAspectRatio,
    required this.width,
  });
  final List<Store> stores;
  final int crossAxisCount;
  final double childAspectRatio;
  final double width;

  @override
  Widget build(
    context,
  ) {
    return GridViewItems(
      width: width,
      stores: stores,
      crossAxisCount: crossAxisCount,
      childAspectRatio: childAspectRatio,
    );
    // AdaptiveLayout(
    //   mobileLayout: (context) => GridViewItems(
    //     stores: stores,
    //     crossAxisCount: 2,
    //     childAspectRatio: 0.58,
    //   ),
    //   tabletLayout: (context) => GridViewItems(
    //     stores: stores,
    //     crossAxisCount: 3,
    //     childAspectRatio: 0.58,
    //   ),
    //   webLayout: (context) => GridViewItems(
    //     stores: stores,
    //     crossAxisCount: 4,
    //     childAspectRatio: 0.58,
    //   ),
    // );
  }
}

class GridViewItems extends StatelessWidget {
  const GridViewItems({
    super.key,
    required this.stores,
    required this.crossAxisCount,
    required this.childAspectRatio,
    required this.width,
  });
  final List<Store> stores;
  final int crossAxisCount;
  final double childAspectRatio;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 6,
        mainAxisSpacing: 6,
        childAspectRatio: childAspectRatio,
      ),
      itemCount: stores.length +
          (stores.length ~/ 4), // زيادة العدد لحساب الـ BannerAds
      itemBuilder: (context, index) {
        // تحديد إذا كان العنصر الحالي هو عنصر الإعلان
        if (index % 5 == 4) {
          // 4 هو العنصر الرابع بناءً على أن الفهرسة تبدأ من 0، لذا كل 5 عناصر (0، 1، 2، 3، 4) سيظهر الإعلان
          return const NativeAdManager();
        }
        final store = stores[index -
            (index ~/ 5)]; // تعديل الفهرس لتجاوز العناصر التي تحتوي على الإعلان

        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              StoreDetailsView.routeName,
              arguments: {
                'storeElement': store,
                'crossAxisCount': crossAxisCount
              },
            );
          },
          child: CustomStoreCardItem(
            width: width,
            store: store,
            isFav: FavsStoresSingleton.instance.favs!.contains(
              store.id!,
            ),
            childAspectRatio: childAspectRatio,
            crossAxisCount: crossAxisCount,
          ),
        );
      },
    );
  }
}

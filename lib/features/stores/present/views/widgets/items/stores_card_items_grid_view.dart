import 'package:flutter/material.dart';
import '../../../../../../core/models/store.dart';
import '../../../../../../core/singletons/favs/fav_stores_singleton.dart';
import '../../../../../admobe/banner_ad.dart';
import '../../../../../offer_details/presentation/views/store_details_view.dart';
import 'custom_store_card_item.dart';

class StoresItemsGridView extends StatelessWidget {
  const StoresItemsGridView({
    super.key,
    required this.stores,
  });
  final List<Store> stores;

  @override
  Widget build(
    context,
  ) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 6,
        mainAxisSpacing: 6,
        childAspectRatio: 0.58,
      ),
      itemCount: stores.length +
          (stores.length ~/ 4), // زيادة العدد لحساب الـ BannerAds
      itemBuilder: (context, index) {
        // تحديد إذا كان العنصر الحالي هو عنصر الإعلان
        if (index % 5 == 4) {
          // 4 هو العنصر الرابع بناءً على أن الفهرسة تبدأ من 0، لذا كل 5 عناصر (0، 1، 2، 3، 4) سيظهر الإعلان
          return const BannerAds();
        }
        final store = stores[index -
            (index ~/ 5)]; // تعديل الفهرس لتجاوز العناصر التي تحتوي على الإعلان

        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              StoreDetailsView.routeName,
              arguments: store,
            );
          },
          child: CustomStoreCardItem(
            store: store,
            isFav: FavsStoresSingleton.instance.favs!.contains(
              store.id!,
            ),
          ),
        );
      },
    );
  }
}

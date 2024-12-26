import 'package:awfar_offer_app/features/admobe/banner_ad.dart';
import 'package:awfar_offer_app/features/admobe/native_ad_manager.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/models/store.dart';
import '../../../../../../core/singletons/favs_offers_singleton.dart';
import '../../../../../offer_details/presentation/views/store_deatails_view.dart';
import 'custom_offer_card_item.dart';

class OffersItemsGridView extends StatefulWidget {
  const OffersItemsGridView({
    super.key,
    required this.stores,
  });
  final List<Store> stores;

  @override
  State<OffersItemsGridView> createState() => _OffersItemsGridViewState();
}

class _OffersItemsGridViewState extends State<OffersItemsGridView> {
  late List<dynamic> _itemsWithAds;
  @override
  void initState() {
    _initializeItemsWithAds();
    super.initState();
  }

  void _initializeItemsWithAds() {
    _itemsWithAds = [];
    for (int i = 0; i < widget.stores.length; i++) {
      _itemsWithAds.add(widget.stores[i]);

      // إضافة إعلان بعد كل 4 عناصر
      if ((i + 1) % 4 == 0) {
        _itemsWithAds.add('nativeAd'); // مؤشر يرمز للإعلان
      }
    }
  }

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
      itemCount: _itemsWithAds.length,
      itemBuilder: (context, index) {
        final item = _itemsWithAds[index];

        if (item == "nativeAd") {
          return const NativeAdManager();
        } else if (item is Store) {
          // final store = widget.stores[index];
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                StoreDeatailsView.routeName,
                arguments: item,
              );
            },
            child: CustomCardItem(
              store: item,
              isFav: FavsOffersSingleton.instance.favs!.contains(
                item.id!,
              ),
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}

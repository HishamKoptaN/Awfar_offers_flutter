import 'package:flutter/material.dart';
import '../../../../../../core/models/store.dart';
import '../../../../../../core/singletons/favs_offers_singleton.dart';
import '../../../../../offer_details/presentation/views/store_deatails_view.dart';
import 'custom_offer_card_item.dart';

class OffersItemsGridView extends StatelessWidget {
  const OffersItemsGridView({
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
      itemCount: stores.length,
      itemBuilder: (context, index) {
        final store = stores[index];
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              StoreDeatailsView.routeName,
              arguments: store,
            );
          },
          child: CustomCardItem(
            store: store,
            isFav: FavsOffersSingleton.instance.favs!.contains(
              store.id!,
            ),
          ),
        );
      },
    );
  }
}

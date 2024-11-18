import 'package:flutter/material.dart';
import '../../../../data/models/offers_response_model.dart';
import 'custom_marka_item.dart';

class CustomMarkaItemListView extends StatelessWidget {
  const CustomMarkaItemListView({
    super.key,
    required this.stores,
  });
  final List<StoreElement>? stores;
  @override
  Widget build(context) {
    return SizedBox(
      height: 46,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: stores!.length,
        itemBuilder: (context, index) {
          final store = stores![index];
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CustomMarkaItem(
              radius1: 23,
              radius2: 22,
              imageUrl: store.image!,
            ),
          );
        },
      ),
    );
  }
}

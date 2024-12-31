import 'package:flutter/material.dart';
import '../../../../../core/models/store.dart';
import '../../../../../core/utils/app_colors.dart';
import 'full_screen_of_offer_image.dart';

class OffersGridView extends StatelessWidget {
  const OffersGridView({
    super.key,
    required this.store,
    required this.crossAxisCount,
  });
  final Store store;
  final int crossAxisCount;
  @override
  Widget build(context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 6,
        mainAxisSpacing: 6,
        childAspectRatio: 0.8,
      ),
      itemCount: store.offerGroups!.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              FullScreenOfOfferImage.routeName,
              arguments: {
                'store': store,
                'initialIndex': index,
              },
            );
          },
          child: Stack(children: [
            Card(
              child: Center(
                child: Image(
                  image: NetworkImage(
                    store.offerGroups![index].offers?.first.image ?? '',
                  ),
                ),
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.brownColor),
                  color: const Color.fromARGB(150, 0, 0, 0),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    (index + 1).toString(),
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: AppColors.brownColor,
                    ),
                  ),
                ),
              ),
            ),
          ]),
        );
      },
    );
  }
}

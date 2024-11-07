import 'package:aroodi_app/core/utils/app_colors.dart';
import 'package:aroodi_app/features/offer_details/presentation/views/widgets/full_screen_of_offer_image.dart';
import 'package:aroodi_app/features/offers/data/models/offers_response_model.dart';
import 'package:flutter/material.dart';

class OffersGridView extends StatelessWidget {
  const OffersGridView({
    super.key,
    required this.store,
  });

  final Store store;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 2 / 3,
      ),
      itemCount: store.offers.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              FullScreenOfOfferImage.routeName,
              arguments: {
                'store': store,
                'initialIndex': index, // The initial index
              },
            );
          },
          child: Stack(children: [
            Card(
              child: Center(
                child: Image(
                  image: NetworkImage(
                    store.offers[index].image,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.yellowColor),
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
                      color: AppColors.yellowColor,
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

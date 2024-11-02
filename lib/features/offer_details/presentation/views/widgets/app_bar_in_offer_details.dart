import 'package:aroodi_app/features/offers/presentation/views/widgets/store/custom_marka_item.dart';
import 'package:aroodi_app/core/widgets/custom_back_button.dart';
import 'package:flutter/material.dart';

class AppBarInOfferDetails extends StatelessWidget {
  const AppBarInOfferDetails({
    super.key,
    required this.title,
    required this.urlImage,
  });

  final String title, urlImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomBackButton(),
          const SizedBox(
            width: 8,
          ),
          CustomMarkaItem(
            radius1: 18,
            radius2: 16,
            imageUrl: urlImage,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.search_outlined,
            size: 24,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

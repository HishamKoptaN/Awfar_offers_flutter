import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_back_button.dart';
import '../../../../stores/present/views/widgets/store/custom_marka_item.dart';
import '../../../../search/presentation/views/search_view.dart';

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
          IconButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                SearchView.routeName,
                arguments: {
                  "isBack": true,
                  "searchLabel": "بحث في $title",
                },
              );
            },
            icon: const Icon(
              Icons.search_outlined,
              size: 24,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

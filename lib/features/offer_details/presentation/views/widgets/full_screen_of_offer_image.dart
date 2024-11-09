import 'package:aroodi_app/core/utils/app_colors.dart';
import 'package:aroodi_app/core/widgets/custom_back_button.dart';
import 'package:aroodi_app/features/offers/data/models/offers_response_model.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class FullScreenOfOfferImage extends StatefulWidget {
  const FullScreenOfOfferImage({
    super.key,
    required this.store,
    required this.initialIndex,
  });

  final Store store;
  final int initialIndex;

  static const String routeName = 'full_screen_of_offer_image';
  @override
  State<FullScreenOfOfferImage> createState() => _FullScreenOfOfferImageState();
}

class _FullScreenOfOfferImageState extends State<FullScreenOfOfferImage> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.initialIndex);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                const CustomBackButton(),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.store.name,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      widget.store.offers[0].description,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                    const Text(
                      "26 سبتمبر 2024 - 20 أكتوبر 2024",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.75,
              child: PhotoViewGallery.builder(
                pageController: _pageController,
                itemCount: widget.store.offers.length,
                builder: (context, index) {
                  return PhotoViewGalleryPageOptions(
                    imageProvider:
                        NetworkImage(widget.store.offers[index].image),
                    minScale: PhotoViewComputedScale.contained * 0.8,
                    maxScale: PhotoViewComputedScale.covered * 2,
                  );
                },
                scrollPhysics: const BouncingScrollPhysics(),
                backgroundDecoration: const BoxDecoration(
                  color: AppColors.darkPrimaryColor,
                ),
                enableRotation: true,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[700],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "شارك",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Icon(
                          Icons.screen_share_outlined,
                          color: Colors.white,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

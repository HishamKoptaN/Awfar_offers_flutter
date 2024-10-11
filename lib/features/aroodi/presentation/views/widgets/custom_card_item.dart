import 'package:aroodi_app/core/utils/app_colors.dart';
import 'package:aroodi_app/features/aroodi/presentation/views/widgets/custom_marka_item.dart';
import 'package:flutter/material.dart';

class CustomCardItem extends StatelessWidget {
  const CustomCardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          const ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ), // Give the image the same radius
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/images/royal_house.jpeg",
              ),
            ),
          ),
          const Text(
            "+7",
            style: TextStyle(
              color: AppColors.lightPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Positioned(
            right: 4,
            bottom: 40,
            child: CustomMarkaItem(),
          ),
          Positioned(
            left: 4,
            bottom: 40,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: AppColors.yellowColor),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "11 أيام متبقية",
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 2 - 10,
                child: const Row(
                  children: [
                    Text(
                      "عروض خاصة",
                      style: TextStyle(
                        color: AppColors.yellowColor,
                        fontSize: 12,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Icon(
                        Icons.checklist_rounded,
                        color: AppColors.lightPrimaryColor,
                        size: 16,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 2 - 10,
                child: const Row(
                  children: [
                    Text(
                      "رويال هاوس",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Icon(
                        Icons.favorite_border_outlined,
                        color: AppColors.lightPrimaryColor,
                        size: 18,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

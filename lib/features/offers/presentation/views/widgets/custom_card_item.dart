import 'package:aroodi_app/core/utils/app_colors.dart';
import 'package:aroodi_app/features/offers/presentation/views/widgets/custom_marka_item.dart';
import 'package:flutter/material.dart';

class CustomCardItem extends StatelessWidget {
  const CustomCardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.primaryColor,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              const ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/royal_house.jpeg",
                  ),
                ),
              ),

              const Positioned(
                top: 8,
                right: 8,
                child: Text(
                  "+7",
                  style: TextStyle(
                    color: AppColors.lightPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),

              // CircleAvatar partially overlapping the image
              const Positioned(
                bottom: -20, // Half outside the image
                right: 4, // Center the avatar horizontally
                child: CustomMarkaItem(
                  radius1: 20,
                  radius2: 19,
                ),
              ),

              Positioned(
                left: 4,
                bottom: -20,
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
            ],
          ),
          // Image in the Card
          Positioned(
            bottom: 24,
            left: 8,
            right: 8,
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2,
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
                      Icons.done_all_outlined,
                      color: AppColors.lightPrimaryColor,
                      size: 14,
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 4,
            right: 8,
            left: 8,
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2,
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
        ],
      ),
    );
  }
}

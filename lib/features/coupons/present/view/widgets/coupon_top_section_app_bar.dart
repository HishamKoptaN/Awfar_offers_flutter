import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class CouponTopSectionAppBar extends StatelessWidget {
  const CouponTopSectionAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
      child: Row(
        children: [
          Text(
            "Coupon",
            style: TextStyles.bold13.copyWith(
              color: AppColors.lightPrimaryColor,
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          const Icon(
            Icons.card_giftcard_outlined,
            color: AppColors.lightPrimaryColor,
            size: 20,
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.search_outlined,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}

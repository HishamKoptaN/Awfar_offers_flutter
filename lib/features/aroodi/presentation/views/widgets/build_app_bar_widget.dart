import 'package:aroodi_app/core/utils/app_colors.dart';
import 'package:aroodi_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class BuildAppBarWidget extends StatelessWidget {
  const BuildAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8,
        right: 8,
        top: 8,
      ),
      child: Row(
        children: [
          Text(
            "3roodi",
            style:
                TextStyles.bold13.copyWith(color: AppColors.lightPrimaryColor),
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.all(4.0),
              child: Row(
                children: [
                  Icon(
                    Icons.account_box_rounded,
                    color: AppColors.lightPrimaryColor,
                  ),
                  Text(
                    "القاهرة",
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    color: AppColors.lightPrimaryColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

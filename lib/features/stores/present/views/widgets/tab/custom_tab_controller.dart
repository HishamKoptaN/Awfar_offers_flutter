import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_text_styles.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      labelPadding: EdgeInsets.all(0),
      dividerColor: Colors.transparent,
      indicatorColor: AppColors.lightPrimaryColor,
      tabs: [
        TapWidget(
          titleTap: "أحدث",
          iconData: Icons.access_time_filled_outlined,
          index: 0,
        ),
        TapWidget(
          titleTap: "المفضلة",
          iconData: Icons.favorite_outlined,
          index: 1,
        ),
      ],
    );
  }
}

class TapWidget extends StatelessWidget {
  const TapWidget({
    super.key,
    required this.titleTap,
    required this.iconData,
    required this.index,
  });

  final String titleTap;
  final IconData iconData;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: 18.sp,
            color: Colors.white,
          ),
          SizedBox(
            width: 5.w,
          ),
          Text(
            titleTap,
            style: TextStyles.normal10,
          ),
        ],
      ),
    );
  }
}

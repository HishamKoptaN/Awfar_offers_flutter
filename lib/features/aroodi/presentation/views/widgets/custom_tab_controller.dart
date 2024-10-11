import 'package:aroodi_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: (index) {
        print(index);
      },
      labelPadding: const EdgeInsets.all(0),
      dividerColor: Colors.transparent,
      indicatorColor: AppColors.lightPrimaryColor,
      tabs: const [
        Tab(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.mic_rounded,
                size: 14,
                color: Colors.white,
              ),
              Text(
                "أعلى اللقطات",
                style: TextStyle(
                  color: AppColors.yellowColor,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
        Tab(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.favorite_outlined,
                size: 14,
                color: Colors.white,
              ),
              Text(
                "المفضلة",
                style: TextStyle(
                  color: AppColors.yellowColor,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
        Tab(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on_outlined,
                size: 14,
                color: Colors.white,
              ),
              Text(
                "القريبة",
                style: TextStyle(
                  color: AppColors.yellowColor,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
        Tab(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.access_time_filled_outlined,
                size: 14,
                color: Colors.white,
              ),
              Text(
                "أحدث",
                style: TextStyle(color: AppColors.yellowColor, fontSize: 10),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

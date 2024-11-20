import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class StoreAvatarSection extends StatelessWidget {
  const StoreAvatarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 8),
            child: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundColor: AppColors.primaryColor,
                backgroundImage: NetworkImage(
                  "https://pbs.twimg.com/media/DIkUxZZVYAEu9mV.jpg",
                ),
                radius: 22,
              ),
            ),
          );
        },
      ),
    );
  }
}

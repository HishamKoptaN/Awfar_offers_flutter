import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomPersonalList extends StatelessWidget {
  const CustomPersonalList({
    super.key,
    required this.headerTitle,
    required this.title,
    required this.subTitle,
  });

  final String headerTitle, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headerTitle,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        GestureDetector(
          onTap: () {},
          child: Card(
            color: AppColors.primaryColor,
            child: Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: ListTile(
                          leading: const Icon(
                            Icons.shopping_bag_outlined,
                            size: 50,
                            color: AppColors.yellowColor,
                          ),
                          title: Text(
                            title,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          subtitle: Text(
                            subTitle,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 0,
                        bottom: 0,
                        child: Card(
                          color: AppColors.yellowColor,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 2),
                            child: Text(
                              "إضافة",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

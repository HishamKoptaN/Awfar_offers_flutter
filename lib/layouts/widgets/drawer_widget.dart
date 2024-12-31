import 'package:awfar_offer_app/core/utils/app_colors.dart';

import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
    required this.onTap,
  });

  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () => onTap(0),
              child: const Row(
                children: [
                  Text(
                    'عروض',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Spacer(),
                  Icon(
                    Icons.local_offer_outlined,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () => onTap(1),
              child: const Row(
                children: [
                  Text(
                    'الفئات',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Spacer(),
                  Icon(
                    Icons.category_outlined,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () => onTap(2),
              child: const Row(
                children: [
                  Text(
                    'كوبون',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Spacer(),
                  Icon(
                    Icons.card_giftcard_outlined,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () => onTap(3),
              child: const Row(
                children: [
                  Text(
                    'حساب',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Spacer(),
                  Icon(
                    Icons.person_outlined,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

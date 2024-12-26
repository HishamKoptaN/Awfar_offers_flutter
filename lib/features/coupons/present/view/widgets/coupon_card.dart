import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../data/models/coupon.dart';

class CouponCard extends StatelessWidget {
  const CouponCard({
    super.key,
    required this.coupon,
    required this.onTap,
  });
  final Coupon coupon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.lightPrimaryColor),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image(
                    image: NetworkImage(
                      coupon.store!.image!,
                    ),
                    width: 70,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    coupon.store!.name!,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    coupon.description!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Clipboard.setData(
                        ClipboardData(
                          text: coupon.code!,
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'تم نسخ الكود: ${coupon.code}',
                            style: const TextStyle(color: Colors.white),
                          ),
                          backgroundColor: AppColors.lightPrimaryColor,
                          duration: const Duration(seconds: 2),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: const Color.fromARGB(255, 29, 224, 36),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 4),
                        child: Row(
                          children: [
                            Text(
                              coupon.code!,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.copy_outlined,
                              color: Color.fromARGB(255, 29, 224, 36),
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: ((MediaQuery.of(context).size.width / 2 - 34) / 1 / 2) + 45,
            right: -8,
            child: const CircleAvatar(
              radius: 8,
              backgroundColor: AppColors.darkPrimaryColor,
            ),
          ),
          Positioned(
            top: ((MediaQuery.of(context).size.width / 2 - 34) / 1 / 2) + 45,
            left: -8,
            child: const CircleAvatar(
              radius: 8,
              backgroundColor: AppColors.darkPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:aroodi_app/core/utils/app_colors.dart';

class CouponCard extends StatelessWidget {
  final String title;
  final String description;
  final String code;
  final VoidCallback onTap;

  const CouponCard({
    super.key,
    required this.title,
    required this.description,
    required this.code,
    required this.onTap,
  });

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
              // border: Border.all(color: Colors.purpleAccent),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Image(
                    image: NetworkImage(
                      "https://pbs.twimg.com/media/DIkUxZZVYAEu9mV.jpg",
                    ),
                    width: 70,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      // نسخ الكود إلى الحافظة
                      Clipboard.setData(ClipboardData(text: code));

                      // إظهار رسالة SnackBar
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'تم نسخ الكود: $code',
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
                            horizontal: 24, vertical: 4),
                        child: Row(
                          children: [
                            Text(
                              code,
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

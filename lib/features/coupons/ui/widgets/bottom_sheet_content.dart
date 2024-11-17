import 'dart:convert';

import 'package:aroodi_app/core/networking/shared_pref.dart';
import 'package:aroodi_app/features/coupons/data/logic/coupon_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:aroodi_app/core/utils/app_colors.dart';

class BottomSheetContent extends StatefulWidget {
  final CouponModel coupon;

  const BottomSheetContent({super.key, required this.coupon});

  @override
  State<BottomSheetContent> createState() => _BottomSheetContentState();
}

class _BottomSheetContentState extends State<BottomSheetContent> {
  bool isCopy = false;
  bool isFavorite = false;
  @override
  void initState() {
    super.initState();
    _checkIfFavorite(); // التحقق إذا كان الكوبون مفضلًا عند بدء الصفحة
  }

  // التحقق من حالة الـ favorite من التخزين المحلي
  Future<void> _checkIfFavorite() async {
    setState(() {
      isFavorite = Prefs.getBool(widget.coupon.code) ?? false;
    });
  }

  // حفظ حالة الـ favorite في التخزين المحلي
  Future<void> _toggleFavorite() async {
    setState(() {
      isFavorite = !isFavorite;
      Prefs.setBool(
        widget.coupon.code,
        isFavorite,
      ); // حفظ الحالة في التخزين المحلي
      isFavorite
          ? saveCouponToLocalStorage(widget.coupon)
          : removeCouponFromLocalStorage(widget.coupon.code);
    });
  }

  Future<void> saveCouponToLocalStorage(CouponModel coupon) async {
    try {
      // تحويل النموذج إلى JSON
      String couponJson = json.encode(coupon.toJson());

      // جلب القائمة المخزنة
      List<String> coupons = Prefs.getStringList('coupons') ?? [];

      // التحقق من وجود الكوبون عبر "code" لتجنب مشاكل مقارنة JSON
      if (!coupons.any((item) => json.decode(item)['code'] == coupon.code)) {
        // إضافة الكوبون إذا لم يكن موجودًا
        coupons.add(couponJson);
        // تخزين القائمة المحدثة
        await Prefs.setStringList('coupons', coupons);
      }
    } catch (e) {
      print('Error saving coupon: $e');
    }
  }

  Future<void> removeCouponFromLocalStorage(String couponCode) async {
    try {
      // جلب القائمة المخزنة
      List<String> coupons = Prefs.getStringList('coupons') ?? [];

      // البحث عن الكوبون المطلوب وإزالته
      coupons.removeWhere((item) => json.decode(item)['code'] == couponCode);

      // تحديث القائمة في SharedPreferences
      await Prefs.setStringList('coupons', coupons);
    } catch (e) {
      print('Error removing coupon: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            color: AppColors.primaryColor, // لون الخلفية
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context); // إغلاق الـ BottomSheet
                  },
                  icon: const Icon(
                    Icons.cancel_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
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
                widget.coupon.code,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                widget.coupon.description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 48,
                ),
                child: GestureDetector(
                  onTap: () {
                    Clipboard.setData(
                      ClipboardData(
                        text: widget.coupon.code,
                      ),
                    ); // نسخ الكود
                    setState(() {
                      isCopy = true;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: const Color.fromARGB(255, 29, 224, 36),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              widget.coupon.code,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 29, 224, 36),
                                fontSize: 24,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            isCopy ? "تم النسخ" : "نسخ",
                            style: TextStyle(
                              color: isCopy
                                  ? Colors.grey
                                  : const Color.fromARGB(255, 29, 224, 36),
                              fontSize: 24,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "هل يعمل هذا الكوبون",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.thumb_up_outlined,
                    color: AppColors.yellowColor,
                    size: 18,
                  ),
                  Icon(
                    Icons.thumb_down_outlined,
                    color: AppColors.yellowColor,
                    size: 18,
                  ),
                ],
              ),
              const SizedBox(
                height: 48,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: _toggleFavorite,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.darkPrimaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Icon(
                            isFavorite
                                ? Icons.favorite_outlined
                                : Icons.favorite_border_outlined,
                            color: AppColors.lightPrimaryColor,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Clipboard.setData(
                          ClipboardData(text: widget.coupon.code),
                        ); // نسخ الكود
                        setState(() {
                          isCopy = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.lightPrimaryColor,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: AppColors.lightPrimaryColor,
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 48,
                            vertical: 8,
                          ),
                          child: Text(
                            "Visit Foot Locker",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.darkPrimaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.share_outlined,
                          color: AppColors.lightPrimaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          top: 165,
          right: -16,
          child: CircleAvatar(
            radius: 16,
            backgroundColor: Colors.black,
          ),
        ),
        const Positioned(
          top: 165,
          left: -16,
          child: CircleAvatar(
            radius: 16,
            backgroundColor: Colors.black,
          ),
        ),
      ],
    );
  }
}

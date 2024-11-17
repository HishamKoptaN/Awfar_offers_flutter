import 'dart:convert';

import 'package:aroodi_app/core/networking/shared_pref.dart';
import 'package:aroodi_app/features/coupons/data/logic/coupon_model.dart';
import 'package:aroodi_app/features/coupons/logic/coupons_cubit.dart';
import 'package:aroodi_app/features/coupons/logic/coupons_state.dart';
import 'package:aroodi_app/features/coupons/ui/widgets/bottom_sheet_content.dart';
import 'package:aroodi_app/features/coupons/ui/widgets/categories_section.dart';
import 'package:aroodi_app/features/coupons/ui/widgets/coupon_card.dart';
import 'package:aroodi_app/features/coupons/ui/widgets/coupon_top_section_app_bar.dart';
import 'package:aroodi_app/features/coupons/ui/widgets/store_avatar_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CouponsScreen extends StatefulWidget {
  const CouponsScreen({super.key});

  static const routeName = 'coupons';

  @override
  State<CouponsScreen> createState() => _CouponsScreenState();
}

class _CouponsScreenState extends State<CouponsScreen> {
  int _selectedCategoryIndex = -1; // Default is "All"

  List<CouponModel> favCoupon = [];

  void _onCategorySelected(int index) {
    setState(() {
      _selectedCategoryIndex = index;
    });
  }

  // جلب جميع الكوبونات من SharedPreferences
  Future<List<CouponModel>> getAllCoupons() async {
    try {
      // جلب قائمة الكوبونات المخزنة
      List<String> couponsJson = Prefs.getStringList('coupons') ?? [];

      // تحويل النصوص إلى كائنات من النوع CouponModel
      List<CouponModel> coupons = couponsJson
          .map((couponJson) => CouponModel.fromJson(json.decode(couponJson)))
          .toList();

      return coupons;
    } catch (e) {
      print('Error fetching coupons: $e');
      return []; // إعادة قائمة فارغة في حالة وجود خطأ
    }
  }

  @override
  Widget build(BuildContext context) {
    getAllCoupons().then((coupons) {
      setState(() {
        favCoupon = coupons;
      });
    });
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<CouponsCubit, CouponsState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is CouponsStateLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is CouponsStateFailure) {
              Center(child: Text(state.message));
              return Text(state.message.toString());
            } else if (state is CouponsStateSuccess) {
              return Column(
                children: [
                  const CouponTopSectionAppBar(),
                  const SizedBox(
                    height: 16,
                  ),
                  // Categories section
                  CategoriesSection(
                    onCategorySelected: _onCategorySelected,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const StoreAvatarSection(),
                  const SizedBox(
                    height: 8,
                  ),
                  Expanded(
                    child: GridView.builder(
                      padding: const EdgeInsets.all(8.0),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: 1,
                      ),
                      itemCount: _selectedCategoryIndex == -1
                          ? state.couponsModel.length
                          : favCoupon.length,
                      itemBuilder: (context, index) {
                        return _selectedCategoryIndex == -1
                            ? CouponCard(
                                title: state.couponsModel[index].code,
                                description:
                                    state.couponsModel[index].description,
                                code: state.couponsModel[index].code,
                                onTap: () {
                                  showBottomSheet(
                                      context, state.couponsModel[index]);
                                },
                              )
                            : CouponCard(
                                title: favCoupon[index].code,
                                description: favCoupon[index].description,
                                code: favCoupon[index].code,
                                onTap: () {
                                  showBottomSheet(
                                    context,
                                    favCoupon[index],
                                  );
                                },
                              );
                      },
                    ),
                  ),
                ],
              );
            } else {
              return const Text(
                "unknown",
                style: TextStyle(color: Colors.white),
              );
            }
          },
        ),
      ),
    );
  }

  void showBottomSheet(BuildContext context, CouponModel coupon) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => BottomSheetContent(coupon: coupon),
    );
  }
}

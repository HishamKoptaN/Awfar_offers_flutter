import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/database/cache/shared_pref_helper.dart';
import '../../../../core/database/cache/shared_pref_keys.dart';
import '../../../../core/singletons/coupons_singleton.dart';
import '../../../../core/singletons/favs/fav_coupons_singleton.dart';
import '../../data/models/coupon.dart';
import '../bloc/coupons_bloc.dart';
import '../bloc/coupons_state.dart';
import 'widgets/bottom_sheet_content.dart';
import 'widgets/categories_section.dart';
import 'widgets/coupon_card.dart';
import 'widgets/coupon_top_section_app_bar.dart';
import 'widgets/store_avatar_section.dart';

class CouponsView extends StatefulWidget {
  const CouponsView({
    super.key,
  });
  static const routeName = 'coupons';
  @override
  State<CouponsView> createState() => _CouponsViewState();
}

class _CouponsViewState extends State<CouponsView> {
  int _selectedCategoryIndex = -1;
  List<Coupon> filtersCoupons = [];
  @override
  Widget build(context) {
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<CouponsBloc, CouponsState>(
          listener: (context, state) {
            state.whenOrNull(
              success: () {},
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loaded: () {
                if (filtersCoupons.isEmpty) {
                  filtersCoupons = CouponsSingleton.instance.coupons;
                }
                return Column(
                  children: [
                    const CouponTopSectionAppBar(),
                    const SizedBox(height: 16),
                    CategoriesSection(
                      onCategorySelected: (index) async {
                        print(index);
                        List<int> favs = await SharedPrefHelper.getIntList(
                          key: SharedPrefKeys.favCoupons,
                        );
                        setState(
                          () {
                            _selectedCategoryIndex = index;
                            if (index == -1) {
                              filtersCoupons =
                                  CouponsSingleton.instance.coupons;
                            } else if (index == -2) {
                              filtersCoupons = CouponsSingleton.instance.coupons
                                  .where(
                                    (coupon) => favs.contains(
                                      coupon.id,
                                    ),
                                  )
                                  .toList();
                            } else {
                              filtersCoupons = CouponsSingleton.instance.coupons
                                  .where(
                                    (coupon) => coupon.categoryId == index,
                                  )
                                  .toList();
                            }
                          },
                        );
                      },
                    ),
                    const SizedBox(height: 12),
                    const StoreAvatarSection(),
                    const SizedBox(height: 8),
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
                        itemCount: filtersCoupons.length,
                        itemBuilder: (context, index) {
                          final coupon = filtersCoupons[index];
                          return CouponCard(
                            coupon: coupon,
                            onTap: () {
                              showBottomSheet(
                                context: context,
                                coupon: coupon,
                                isFav:
                                    FavCouponsSingleton.instance.favs!.contains(
                                  coupon.id!,
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
              loading: () {
                return const Center(child: CircularProgressIndicator());
              },
              orElse: () {
                return const Text(
                  "unknown",
                  style: TextStyle(color: Colors.white),
                );
              },
              failure: (e) {
                return Center(
                  child: Text(e),
                );
              },
            );
          },
        ),
      ),
    );
  }

  void showBottomSheet({
    required BuildContext context,
    required Coupon coupon,
    required bool isFav,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => BottomSheetContent(
        coupon: coupon,
        isFav: isFav,
      ),
    );
  }
}

import 'package:aroodi_app/core/utils/app_colors.dart';
import 'package:aroodi_app/core/utils/app_text_styles.dart';
import 'package:aroodi_app/features/coupons/logic/coupons_cubit.dart';
import 'package:aroodi_app/features/coupons/logic/coupons_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CouponsScreen extends StatefulWidget {
  const CouponsScreen({super.key});

  static const routeName = 'coupons';

  @override
  State<CouponsScreen> createState() => _CouponsScreenState();
}

class _CouponsScreenState extends State<CouponsScreen> {
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<CouponsCubit, CouponsState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            if (state is CouponsStateLoading) {
              return const CircularProgressIndicator();
            } else if (state is CouponsStateFailure) {
              print(state.message);
              return Text(state.message.toString());
            } else if (state is CouponsStateSuccess) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                    child: Row(
                      children: [
                        Text(
                          "Coupon",
                          style: TextStyles.bold13.copyWith(
                            color: AppColors.lightPrimaryColor,
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Icon(
                          Icons.card_giftcard_outlined,
                          color: AppColors.lightPrimaryColor,
                          size: 20,
                        ),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.search_outlined,
                              color: Colors.grey,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  // Categories section
                  Padding(
                    padding: const EdgeInsets.only(right: 2),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = -1;
                            });
                            // widget.onCategorySelected(-1);
                          },
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: _selectedIndex == -1
                                  ? AppColors.lightPrimaryColor
                                  : AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8,
                                ),
                                child: Text(
                                  "جميع",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = -2;
                            });
                            // widget.onCategorySelected(-1);
                          },
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: _selectedIndex == -2
                                  ? AppColors.lightPrimaryColor
                                  : AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 8,
                                ),
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  color: _selectedIndex == -2
                                      ? Colors.white
                                      : AppColors.lightPrimaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 40,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 8,
                              itemBuilder: (context, index) {
                                // final category = widget.categories![index];
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _selectedIndex = index;
                                    });
                                    // widget.onCategorySelected(category.id);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: _selectedIndex == index
                                            ? AppColors.lightPrimaryColor
                                            : AppColors.primaryColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 16,
                                          vertical: 8,
                                        ),
                                        child: Text(
                                          "الأزياء",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
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
                  ),
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
                      itemCount: state.couponsModel.length, // عدد الكوبونات
                      itemBuilder: (context, index) {
                        return _buildCouponCard(
                          state.couponsModel[index].code,
                          state.couponsModel[index].description,
                          state.couponsModel[index].code,
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

  Widget _buildCouponCard(
    String title,
    String description,
    String code,
  ) {
    return GestureDetector(
      onTap: () {
        bottomSheet(context);
      },
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

  void bottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        bool isCopy = false; // متغير الحالة المحلي
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setModalState) {
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
                      const Text(
                        "Foot Locker",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "Upto 50% on selected lines Get 5% Off on Full-Priced items",
                        textAlign: TextAlign.center,
                        style: TextStyle(
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
                              const ClipboardData(text: "DAM7"),
                            ); // نسخ الكود
                            setModalState(() {
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
                                  const Align(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      "DAM7",
                                      style: TextStyle(
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
                                          : const Color.fromARGB(
                                              255, 29, 224, 36),
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
                        padding: const EdgeInsets.only(
                            bottom: 16, left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.darkPrimaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8),
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  color: AppColors.lightPrimaryColor,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Clipboard.setData(
                                  const ClipboardData(text: "DAM7"),
                                ); // نسخ الكود
                                setModalState(() {
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
          },
        );
      },
    );
  }
}

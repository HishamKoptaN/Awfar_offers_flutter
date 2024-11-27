import 'package:awfar_offer_app/core/database/cache/shared_pref_helper.dart';
import 'package:awfar_offer_app/core/database/cache/shared_pref_keys.dart';
import 'package:awfar_offer_app/core/utils/app_colors.dart';
import 'package:awfar_offer_app/features/categories/data/models/categories_response_model.dart';
import 'package:awfar_offer_app/features/categories/presentation/views/widgets/app_bar_in_sub_category.dart';
import 'package:awfar_offer_app/features/offers/presentation/views/widgets/items/custom_offer_card_item.dart';
import 'package:awfar_offer_app/features/offers/presentation/views/widgets/store/custom_marka_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubCategoriesView extends StatelessWidget {
  const SubCategoriesView({super.key, required this.category});
  final SubCategory category;

  static const String routeName = 'subCategoriesView';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            AppBarInSubCategory(
              category: category,
            ),
            SizedBox(
              height: 28,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: AppColors.lightPrimaryColor,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              index == 0 ? "الكل" : "إكسيل",
                              style: const TextStyle(
                                color: AppColors.darkPrimaryColor,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            const Text(
                              "(103)",
                              style: TextStyle(
                                color: AppColors.darkPrimaryColor,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 46,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 23,
                          backgroundColor: Colors.white,
                          child: index != 0
                              ? const CircleAvatar(
                                  backgroundColor: AppColors.primaryColor,
                                  backgroundImage: NetworkImage(
                                    "",
                                  ),
                                  radius: 22,
                                )
                              : const CircleAvatar(
                                  backgroundColor: AppColors.primaryColor,
                                  radius: 22,
                                  child: Text(
                                    "جميع",
                                    style: TextStyle(
                                      color: AppColors.lightPrimaryColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                        ),
                        Positioned(
                          right: 2,
                          top: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.yellowColor,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(4),
                              child: Text(
                                "98",
                                style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
                shrinkWrap: true,
                // physics:
                //     const NeverScrollableScrollPhysics(), // Disable grid scroll
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns in the grid
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 6,
                  childAspectRatio: 0.58,
                ),
                itemCount: 20,
                itemBuilder: (context, index) {
                  // final offer = offers[index];
                  return GestureDetector(
                    onTap: () {
                      // StoreElement selectedStore = stores.firstWhere(
                      //   (store) => store.id == offer.store!.id,
                      // );
                      // Navigator.pushNamed(
                      //   context,
                      //   OfferDeatailsView.routeName,
                      //   arguments: selectedStore,
                      // );
                    },
                    child: Card(
                      color: AppColors.primaryColor,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16),
                              ),
                              child: Image.asset(
                                "assets/images/royal_house.jpeg",
                                height: (((width - 6) / 2) / 0.58) / 2,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            child: Text(
                              "وفر ج.م 1000.00",
                              style: TextStyle(
                                color: Colors.white,
                                // fontWeight: FontWeight.w600,
                                fontSize: 9,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.yellowColor,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Text(
                                      "4% خصم",
                                      style: TextStyle(
                                        color: AppColors.darkPrimaryColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "23990.00",
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        decorationColor: Colors.grey,
                                        decorationThickness: 2,
                                        color: Colors.grey,
                                        fontSize: 8,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "22990.00 ج.م",
                                      style: TextStyle(
                                        color: AppColors.yellowColor,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            child: Row(
                              children: [
                                CustomMarkaItem(
                                  radius1: 16,
                                  radius2: 15,
                                  imageUrl: "",
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "باقي 4 أيام",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "رنين",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: AppColors.darkPrimaryColor,
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.storefront_outlined,
                                              color: Colors.grey,
                                              size: 16,
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              "المتاجر",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                ),
                                const SizedBox(
                                  width: 18,
                                ),
                                const Icon(
                                  Icons.bookmark_add_outlined,
                                  color: AppColors.lightPrimaryColor,
                                  size: 24,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

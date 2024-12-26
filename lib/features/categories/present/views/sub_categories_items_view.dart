import 'package:awfar_offer_app/core/utils/app_colors.dart';
import 'package:awfar_offer_app/features/categories/present/views/widgets/app_bar_in_sub_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/models/product.dart';
import '../../../../core/models/store.dart';
import '../../../../core/models/sub_category.dart';
import '../../../../core/singletons/products_singleton.dart';
import '../../../../core/singletons/stores_singleton.dart';
import '../../../../core/singletons/markas_singleton.dart';
import '../../../../core/widgets/custom_circular_progress.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../../offer_details/presentation/views/store_details_view.dart';
import '../../../products/presentation/bloc/products_bloc.dart';
import '../../../products/presentation/bloc/products_event.dart';
import '../../../products/presentation/bloc/products_state.dart';
import '../../../markas/presentation/bloc/markas_bloc.dart';
import '../../../markas/presentation/bloc/markas_event.dart';
import '../../../markas/presentation/bloc/markas_state.dart';
import '../../../stores/present/views/widgets/store/custom_marka_item.dart';

class MarkasView extends StatefulWidget {
  const MarkasView({
    super.key,
    required this.subCategory,
  });
  final SubCategory subCategory;
  static const String routeName = 'subCategoriesItemsView';

  @override
  State<MarkasView> createState() => _MarkasViewState();
}

class _MarkasViewState extends State<MarkasView> {
  int _selectedIndex = -1;
  List<Product>? products;

  @override
  void initState() {
    super.initState();
    products = ProductsSingleton.instance.prdoucts;
  }

  @override
  Widget build(context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            AppBarInSubCategory(
              category: widget.subCategory,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        _selectedIndex = -1;
                        products = ProductsSingleton.instance.prdoucts;
                      },
                    );
                  },
                  child: Container(
                    height: 35.w,
                    decoration: BoxDecoration(
                      color: _selectedIndex == -1
                          ? AppColors.lightPrimaryColor
                          : AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      child: Text(
                        "الكل ${ProductsSingleton.instance.prdoucts.length}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 35.h,
                    child: BlocProvider(
                      create: (context) => MarkasBloc(
                        getMarkasUseCase: getIt(),
                      )..add(
                          MarkasEvent.getMarkas(
                            subCategoryId: widget.subCategory.id!,
                          ),
                        ),
                      child: BlocBuilder<MarkasBloc, MarkasState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            loaded: () {
                              return ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount:
                                    MarkasSingleton.instance.markas.length,
                                // _selectedIndex == -1
                                //     ? MarkasSingleton.instance.markas.length
                                //     : MarkasSingleton.instance.markas
                                //         .where(
                                //           (i) =>
                                //               i.categoryId ==
                                //               _selectedIndex,
                                //         )
                                //         .toList()
                                //         .length,
                                itemBuilder: (context, index) {
                                  final subCategoryItem =
                                      MarkasSingleton.instance.markas[index];
                                  return GestureDetector(
                                    onTap: () {
                                      setState(
                                        () {
                                          products = ProductsSingleton
                                              .instance.prdoucts
                                              .where(
                                                (product) =>
                                                    product.markaId ==
                                                    subCategoryItem.id,
                                              )
                                              .toList();
                                          _selectedIndex = index;
                                        },
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        right: 8,
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: _selectedIndex == index
                                              ? AppColors.lightPrimaryColor
                                              : AppColors.primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: AppColors.lightPrimaryColor,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                subCategoryItem.name!,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 4,
                                              ),
                                              Text(
                                                subCategoryItem.productsCunt
                                                    .toString(),
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            orElse: () {
                              return const CustomCircularProgress();
                            },
                            loading: () {
                              return const CustomCircularProgress();
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              child: BlocProvider(
                create: (context) => ProductsBloc(
                  getProductsUseCase: getIt(),
                )..add(
                    ProductsEvent.getProducts(
                      subCategoryId: widget.subCategory.id!,
                    ),
                  ),
                child: BlocBuilder<ProductsBloc, ProductsState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      loaded: () {
                        return GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // Number of columns in the grid
                            crossAxisSpacing: 6,
                            mainAxisSpacing: 6,
                            childAspectRatio: 0.58,
                          ),
                          itemCount: products!.length,
                          itemBuilder: (context, index) {
                            final prdouct = products![index];
                            return GestureDetector(
                              onTap: () async {
                                Store selectedStore =
                                    StoresSingleton.instance.stores.firstWhere(
                                  (store) =>
                                      store.id ==
                                      prdouct.offer?.offerGroup?.store?.id,
                                );
                                Navigator.pushNamed(
                                  context,
                                  StoreDetailsView.routeName,
                                  arguments: selectedStore,
                                );
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
                                        child: Image.network(
                                          prdouct.image!,
                                          height:
                                              (((width - 6) / 2) / 0.58) / 2,
                                          width: double.infinity,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: Text(
                                        "وفر ج.م ${prdouct.amountSaved!}",
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 9,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: AppColors.brownColor,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8),
                                              child: CustomText(
                                                text:
                                                    "خصم ${prdouct.discountRate}%",
                                                color:
                                                    AppColors.darkPrimaryColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const Spacer(),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                prdouct.price!,
                                                style: TextStyle(
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  decorationColor: Colors.grey,
                                                  decorationThickness: 2,
                                                  color: Colors.grey,
                                                  fontSize: 10.sp,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                "ج.م ${prdouct.priceAfterDiscount!}",
                                                style: const TextStyle(
                                                  color: AppColors.brownColor,
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
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: Row(
                                        children: [
                                          CustomMarkaItem(
                                            radius1: 16,
                                            radius2: 15,
                                            imageUrl: prdouct.offer!.offerGroup!
                                                .store!.image!,
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "متبقي ${prdouct.offer?.offerGroup?.daysRemaining ?? ''} يوم",
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                prdouct.offer?.offerGroup?.store
                                                        ?.name ??
                                                    '',
                                                style: const TextStyle(
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                  color: AppColors
                                                      .darkPrimaryColor,
                                                ),
                                                child: const Padding(
                                                  padding: EdgeInsets.all(2.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .storefront_outlined,
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
                        );
                      },
                      loading: () {
                        return const CustomCircularProgress();
                      },
                      orElse: () {
                        return const CustomCircularProgress();
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: unused_import
import 'package:awfar_offer_app/features/admobe/banner_ad.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/models/store.dart';
import '../../../../../core/singletons/stores_singleton.dart';
import '../../../../../core/widgets/custom_circular_progress.dart';
import '../../../../categories/present/bloc/categories_bloc.dart';
import '../../../../categories/present/bloc/categories_state.dart';
import 'category/custom_category_item_list_view.dart';
import 'items/stores_card_items_grid_view.dart';
import 'store/custom_store_items_list_view.dart';

class StoresViewBodyDetails extends StatefulWidget {
  const StoresViewBodyDetails({
    super.key,
    required this.stores,
    required this.crossAxisCount,
    required this.childAspectRatio,
    required this.width,
  });
  final List<Store> stores;
  final int crossAxisCount;
  final double childAspectRatio;
  final double width;
  @override
  State<StoresViewBodyDetails> createState() => _StoresViewBodyDetailsState();
}

class _StoresViewBodyDetailsState extends State<StoresViewBodyDetails> {
  int? selectedCategoryId = -1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // BlocBuilder<CategoriesBloc, CategoriesState>(
          //   builder: (context, state) {
          //     return state.maybeWhen(
          //       loaded: () {
          //         return CustomCategoryItemListView(
          //           onCategorySelected: (id) {
          //             setState(
          //               () {
          //                 selectedCategoryId = id;
          //               },
          //             );
          //           },
          //         );
          //       },
          //       orElse: () {
          //         return const CustomCircularProgress();
          //       },
          //     );
          //   },
          // ),
          const BannerAds(),
          const SizedBox(
            height: 12,
          ),
          CustomMarkaItemListView(
            stores: StoresSingleton.instance.stores,
          ),
          const SizedBox(
            height: 8,
          ),
          StoresItemsGridView(
            width: widget.width,
            stores: widget.stores,
            childAspectRatio: widget.childAspectRatio,
            crossAxisCount: widget.crossAxisCount,
            // // widget.stores
            // selectedCategoryId == -1
            //     ? widget.stores
            //     : widget.stores
            //         .where(
            //           (store) => store.offerGroups!.any(
            //             (offerGroup) =>
            //                 offerGroup.categoryId == selectedCategoryId,
            //           ),
            //         )
            //         .toList(),
          ),
          const SizedBox(
            height: 16,
          ),
          const BannerAds(),
          const SizedBox(
            height: 350,
          ),
        ],
      ),
    );
  }
}

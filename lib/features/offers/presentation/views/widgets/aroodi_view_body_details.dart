import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/models/store.dart';
import '../../../../../core/singletons/stores_singleton.dart';
import '../../../../../core/widgets/custom_circular_progress.dart';
import '../../../../admobe/banner_ad.dart';
import '../../../../categories/presentation/bloc/categories_bloc.dart';
import '../../../../categories/presentation/bloc/categories_state.dart';
import 'category/custom_category_item_list_view.dart';
import 'items/offers_card_items_grid_view.dart';
import 'store/custom_store_items_list_view.dart';

class AroodiViewBodyDetails extends StatefulWidget {
  const AroodiViewBodyDetails({
    super.key,
    required this.stores,
  });
  final List<Store> stores;
  @override
  State<AroodiViewBodyDetails> createState() => _AroodiViewBodyDetailsState();
}

class _AroodiViewBodyDetailsState extends State<AroodiViewBodyDetails> {
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
          BlocBuilder<CategoriesBloc, CategoriesState>(
            builder: (context, state) {
              return state.maybeWhen(
                loaded: () {
                  return CustomCategoryItemListView(
                    onCategorySelected: (id) {
                      setState(
                        () {
                          selectedCategoryId = id;
                        },
                      );
                    },
                  );
                },
                orElse: () {
                  return const CustomCircularProgress();
                },
              );
            },
          ),
          const SizedBox(
            height: 12,
          ),
          CustomMarkaItemListView(
            stores: StoresSingleton.instance.stores,
          ),
          const SizedBox(
            height: 8,
          ),
          OffersItemsGridView(
            stores:
                // widget.stores
                selectedCategoryId == -1
                    ? widget.stores
                    : widget.stores
                        .where(
                          (store) => store.offerGroups!.any(
                            (offerGroup) =>
                                offerGroup.categoryId == selectedCategoryId,
                          ),
                        )
                        .toList(),
          ),
          const SizedBox(
            height: 16,
          ),
          const BannerAds(),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

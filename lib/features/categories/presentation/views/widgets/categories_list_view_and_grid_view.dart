import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/models/category.dart';
import '../../../../../core/models/sub_category.dart';
import '../../../../../core/singletons/categories_singleton.dart';
import '../../../../../core/singletons/sub_categories_singleton.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/custom_circular_progress.dart';
import '../../../../sub_categories/presentation/bloc/sub_categories_bloc.dart';
import '../../../../sub_categories/presentation/bloc/sub_categories_state.dart';
import '../sub_categories_items_view.dart';
import 'active_and_in_active_category.dart';

class ListViewAndGridView extends StatefulWidget {
  const ListViewAndGridView({
    super.key,
  });

  @override
  State<ListViewAndGridView> createState() => _ListViewAndGridViewState();
}

class _ListViewAndGridViewState extends State<ListViewAndGridView> {
  int? selectedCategoryId;
  Category? selectedCategory;
  List<Category> categories = [];
  List<SubCategory> subCategories = [];

  @override
  void initState() {
    super.initState();
    categories = CategoriesSingleton.instance.categories;
    selectedCategoryId = CategoriesSingleton.instance.categories.isNotEmpty
        ? CategoriesSingleton.instance.categories.first.id
        : null;
    selectedCategory = categories.firstWhere(
      (category) => category.id == selectedCategoryId,
      orElse: () => categories.first,
    );
  }

  @override
  Widget build(context) {
    return Expanded(
      child: Row(
        children: [
          //! قائمة الفئات الأساسية
          SizedBox(
            width: MediaQuery.of(
                  context,
                ).size.width *
                0.30,
            child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        selectedCategoryId = category.id;
                      },
                    );
                    subCategories =
                        SubCategoriesSingleton.instance.subCategories.where(
                      (subCategory) {
                        return subCategory.categoryId == category.id;
                      },
                    ).toList();
                  },
                  child: selectedCategoryId == category.id
                      ? ActiveCategory(
                          categoryName: category.name!,
                        )
                      : InActiveCategory(
                          categoryName: category.name!,
                        ),
                );
              },
            ),
          ),
          //! عرض الفئات الفرعية المرتبطة بالفئة المختارة
          Expanded(
            child: Container(
              color: AppColors.primaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      selectedCategory != null ? selectedCategory!.name! : "",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  BlocBuilder<SubCategoriesBloc, SubCategoriesState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        loaded: () {
                          subCategories =
                              SubCategoriesSingleton.instance.subCategories
                                  .where(
                                    (subCategory) =>
                                        subCategory.categoryId ==
                                        selectedCategoryId,
                                  )
                                  .toList();
                          return Expanded(
                            child: subCategories.isNotEmpty
                                ? GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount:
                                          3, // عدد الأعمدة في الشبكة
                                      childAspectRatio: 0.70,
                                    ),
                                    itemCount: subCategories.length,
                                    itemBuilder: (context, index) {
                                      final subCategory = subCategories[index];
                                      return Column(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                context,
                                                SubCategoriesItemsView
                                                    .routeName,
                                                arguments: subCategory,
                                              );
                                            },
                                            child: Stack(
                                              children: [
                                                CircleAvatar(
                                                  backgroundColor: AppColors
                                                      .darkPrimaryColor,
                                                  backgroundImage: NetworkImage(
                                                    subCategory.image ?? '',
                                                  ),
                                                  radius: 34,
                                                ),
                                                Positioned(
                                                  right: 2,
                                                  top: 0,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color:
                                                          AppColors.yellowColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              4),
                                                      child: Text(
                                                        subCategory
                                                            .subCategoryItemsCount
                                                            .toString(),
                                                        style: const TextStyle(
                                                          fontSize: 9,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 2),
                                          Text(
                                            subCategory.name!,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 9,
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  )
                                : const Center(
                                    child: Text(
                                      'لا توجد فئات فرعية',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                          );
                        },
                        orElse: () {
                          return const CustomCircularProgress();
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

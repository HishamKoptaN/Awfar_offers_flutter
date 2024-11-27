import 'package:awfar_offer_app/features/categories/presentation/views/sub_categories_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../data/models/categories_response_model.dart';
import 'active_and_in_active_category.dart';

class ListViewAndGridView extends StatefulWidget {
  const ListViewAndGridView({
    super.key,
    required this.categories,
  });
  final List<CategoriesResponseModel> categories;

  @override
  State<ListViewAndGridView> createState() => _ListViewAndGridViewState();
}

class _ListViewAndGridViewState extends State<ListViewAndGridView> {
  int? selectedCategoryId;

  @override
  void initState() {
    super.initState();
    // تعيين الفئة الأولى كالفئة المختارة عند البدء
    selectedCategoryId =
        widget.categories.isNotEmpty ? widget.categories.first.id : null;
  }

  @override
  Widget build(BuildContext context) {
    // الحصول على الفئة المختارة
    final selectedCategory = widget.categories.firstWhere(
      (category) => category.id == selectedCategoryId,
      orElse: () => widget.categories.first,
    );

    return Expanded(
      child: Row(
        children: [
          //! قائمة الفئات الأساسية
          SizedBox(
            width: MediaQuery.of(context).size.width *
                0.30, // عرض ثابت لـ ListView في الـ Row
            child: ListView.builder(
              itemCount: widget.categories.length,
              itemBuilder: (context, index) {
                final category = widget.categories[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCategoryId = category.id; // تحديث الفئة المختارة
                    });
                  },
                  child: selectedCategoryId == category.id
                      ? ActiveCategory(categoryName: category.name!)
                      : InActiveCategory(categoryName: category.name!),
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
                      selectedCategory != null ? selectedCategory.name! : "",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: selectedCategory.subCategories != null &&
                            selectedCategory.subCategories!.isNotEmpty
                        ? GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3, // عدد الأعمدة في الشبكة
                              childAspectRatio: 0.70,
                            ),
                            itemCount: selectedCategory.subCategories!.length,
                            itemBuilder: (context, index) {
                              final subCategory =
                                  selectedCategory.subCategories![index];
                              return Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                        context,
                                        SubCategoriesView.routeName,
                                        arguments: subCategory,
                                      );
                                    },
                                    child: Stack(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor:
                                              AppColors.darkPrimaryColor,
                                          backgroundImage: NetworkImage(
                                            subCategory.image ??
                                                '', // استبدال رابط الصورة المناسب
                                          ),
                                          radius: 34,
                                        ),
                                        Positioned(
                                          right: 2,
                                          top: 0,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: AppColors.yellowColor,
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(4),
                                              child: Text(
                                                subCategory.offers!.length
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

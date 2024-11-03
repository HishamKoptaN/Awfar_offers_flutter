import 'package:aroodi_app/core/utils/app_colors.dart';
import 'package:aroodi_app/features/categories/presentation/views/widgets/active_and_in_active_category.dart';
import 'package:flutter/material.dart';
import '../../../data/models/categories_response_model.dart';

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
  int? selectedCategoryIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(context) {
    return Expanded(
      child: Row(
        children: [
          //! Categories
          SizedBox(
            width: MediaQuery.of(context).size.width *
                0.30, // Fixed width for ListView in the Row
            child: ListView.builder(
              itemCount: widget.categories.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        selectedCategoryIndex =
                            index; // Update selected category
                      },
                    );
                  },
                  child: selectedCategoryIndex == index
                      ? ActiveCategory(
                          categoryName: widget.categories[index].name!,
                        )
                      : InActiveCategory(
                          categoryName: widget.categories[index].name!,
                        ),
                );
              },
            ),
          ),
          //! Offfers based on selected category
          Expanded(
            child: Container(
              color: AppColors.primaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.categories[selectedCategoryIndex!].name.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, // Number of columns in the grid
                        childAspectRatio: 0.70,
                      ),
                      itemCount: widget.categories[selectedCategoryIndex!]
                          .subCategories?.length,
                      itemBuilder: (context, index) {
                        final subCategories = widget
                            .categories[selectedCategoryIndex!]
                            .subCategories![index];
                        return Column(
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Stack(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: AppColors.darkPrimaryColor,
                                    backgroundImage: NetworkImage(
                                      subCategories.image!,
                                    ),
                                    radius: 34,
                                  ),
                                  Positioned(
                                    right: 2,
                                    top: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.yellowColor,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: Text(
                                          subCategories.offers!.length
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
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              subCategories.name!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            )
                          ],
                        );
                      },
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

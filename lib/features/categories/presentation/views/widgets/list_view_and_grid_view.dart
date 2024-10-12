import 'package:aroodi_app/core/utils/app_colors.dart';
import 'package:aroodi_app/features/categories/presentation/views/widgets/active_and_in_active_category.dart';
import 'package:flutter/material.dart';

class ListViewAndGridView extends StatefulWidget {
  const ListViewAndGridView({
    super.key,
  });

  @override
  State<ListViewAndGridView> createState() => _ListViewAndGridViewState();
}

class _ListViewAndGridViewState extends State<ListViewAndGridView> {
  // Dummy data for ListView and GridView
  final List<String> listItems = [
    "إلكترونيات",
    "طعام - بقالة",
    "فواكة وخضروات",
    "منتجات الألبان وبيض",
    "منتجات الألبان وبيض",
    "منتجات الألبان وبيض",
    "منتجات الألبان وبيض",
    "منتجات الألبان وبيض",
    "منتجات الألبان وبيض",
    "منتجات الألبان وبيض",
    "منتجات الألبان وبيض",
    "منتجات الألبان وبيض",
    "منتجات الألبان وبيض",
    "منتجات الألبان وبيض",
    "منتجات الألبان وبيض",
    "منتجات الألبان وبيض",
    "منتجات الألبان وبيض",
    "منتجات الألبان وبيض",
    "منتجات الألبان وبيض",
    "منتجات الألبان وبيض",
    "منتجات الألبان وبيض",
    "منتجات الألبان وبيض",
    "منتجات الألبان وبيض",
  ];
  final Map<String, List<String>> gridItems = {
    'إلكترونيات': [
      'جوالات',
      'تلفزيون',
      'أدوات المطبخ',
      'جوالات',
      'تلفزيون',
      'أدوات المطبخ',
      'جوالات',
      'تلفزيون',
      'أدوات المطبخ',
      'جوالات',
      'تلفزيون',
      'أدوات المطبخ',
      'جوالات',
      'تلفزيون',
      'أدوات المطبخ',
      'جوالات',
      'تلفزيون',
      'أدوات المطبخ',
      'جوالات',
      'تلفزيون',
      'أدوات المطبخ'
    ],
    'طعام - بقالة': ['Item 2A', 'Item 2B'],
    'فواكة وخضروات': ['Item 3A', 'Item 3B', 'Item 3C', 'Item 3D'],
    'منتجات الألبان وبيض': ['Item 4A', 'Item 4B', 'Item 4C'],
  };

  String selectedCategory = 'إلكترونيات';

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width *
                0.30, // Fixed width for ListView in the Row
            child: ListView.builder(
              itemCount: listItems.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        selectedCategory =
                            listItems[index]; // Update selected category
                      },
                    );
                  },
                  child: selectedCategory == listItems[index]
                      ? ActiveCategory(
                          categoryName: listItems[index],
                        )
                      : InActiveCategory(
                          categoryName: listItems[index],
                        ),
                );
              },
            ),
          ),
          Expanded(
            child: Container(
              color: AppColors.primaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      selectedCategory,
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
                      itemCount: gridItems[selectedCategory]!
                          .length, // Items based on selected category
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            GestureDetector(
                              onTap: () {
                                print(index);
                              },
                              child: Stack(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: AppColors.darkPrimaryColor,
                                    backgroundImage: AssetImage(
                                      "assets/images/royal_house.jpeg",
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
                                      child: const Padding(
                                        padding: EdgeInsets.all(4),
                                        child: Text(
                                          "87",
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
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              gridItems[selectedCategory]![index],
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

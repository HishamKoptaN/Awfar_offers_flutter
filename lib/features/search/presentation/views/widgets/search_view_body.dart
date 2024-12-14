import 'package:awfar_offer_app/core/utils/app_colors.dart';
import 'package:awfar_offer_app/features/admobe/banner_ad.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_back_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({
    super.key,
    required this.isBack,
    required this.searchLabel,
  });
  final bool isBack;
  final String searchLabel;

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  List<String> popularSearchTerms = [
    "زبادي",
    "دجاج",
    "tv",
    "كازيون",
    "بانيه",
    "بيف",
    "رومي",
    "Lu lu",
    "feba",
    "بطاطس",
    "حفاظات",
    "بازلاء",
    "Firebase",
    "زيت كريستال",
    "مياه",
    "سجق",
    "غساله",
    "ملابس نسائية",
    "شاشة تلفزيون",
    "كريم",
    "كريمة",
  ];

  List<String> recentSearches = [
    "بانيه",
    "بيف",
  ];

  List<String> filteredSearchTerms = [];

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initially, all popular search terms are shown
    filteredSearchTerms = List.from(popularSearchTerms);

    // Add a listener to the search bar controller to filter the search terms as the user types
    searchController.addListener(() {
      filterSearchTerms();
    });
  }

  // Function to filter the popular search terms
  void filterSearchTerms() {
    String query = searchController.text.toLowerCase();
    setState(() {
      filteredSearchTerms = popularSearchTerms.where((term) {
        return term.toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  void dispose() {
    // Dispose the controller when the widget is disposed
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              widget.isBack ? const CustomBackButton() : const SizedBox(),
              Expanded(
                child: CustomTextFormField(
                  controller: searchController,
                  hintText: widget.searchLabel,
                  textInputType: TextInputType.text,
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  const Row(
                    children: [
                      Icon(
                        Icons.local_fire_department_rounded,
                        color: Colors.white,
                        size: 22,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "البحث الشائع",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 4.0,
                    children: List.generate(
                      popularSearchTerms.length,
                      (index) => Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 10.0),
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.grey, width: 0.8),
                        ),
                        child: FittedBox(
                          child: Text(
                            popularSearchTerms[index],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.history_outlined,
                        color: Colors.white,
                        size: 22,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        "عمليات البحث الأخيره",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "إمسح",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 4.0,
                    children: List.generate(
                      recentSearches.length,
                      (index) => Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 10.0,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.8,
                          ),
                        ),
                        child: FittedBox(
                          child: Row(
                            children: [
                              Text(
                                recentSearches[index],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Icon(
                                  Icons.close,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const BannerAds(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

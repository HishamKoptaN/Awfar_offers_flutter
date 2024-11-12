import 'package:aroodi_app/core/widgets/custom_back_button.dart';
import 'package:aroodi_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

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
    "Flutter",
    "Firebase",
    "Helwan University",
    "Dart Programming",
    "Bridal Preparation",
    "Family Committees",
    "Flutter",
    "Firebase",
    "Helwan University",
    "Dart Programming",
    "Bridal Preparation",
    "Family Committees",
    "Firebase",
    "Helwan University",
    "Dart Programming",
    "Bridal Preparation",
    "Family Committees",
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
          const SizedBox(height: 16),
          const Row(
            children: [
              Icon(
                Icons.local_fire_department_rounded,
                color: Colors.white,
                size: 20,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                "البحث الشائع",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          // Displaying filtered search terms
          Expanded(
            child: ListView.builder(
              itemCount: filteredSearchTerms.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    filteredSearchTerms[index],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onTap: () {
                    // You can handle what happens when a search term is clicked here
                    // For example, you can navigate to another screen
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

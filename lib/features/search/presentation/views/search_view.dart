import 'package:aroodi_app/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({
    super.key,
    required this.isBack,
    required this.searchLabel,
  });
  final bool isBack;
  final String searchLabel;

  static const String routeName = 'search_view';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SearchViewBody(
          isBack: isBack,
          searchLabel: searchLabel,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/custom_circular_progress.dart';
import '../bloc/categories_bloc.dart';
import '../bloc/categories_state.dart';
import 'widgets/app_bar_in_category.dart';
import 'widgets/categories_list_view_and_grid_view.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({
    super.key,
    required this.brandName,
  });
  static const String routeName = 'categories_view';
  final String brandName;
  @override
  Widget build(context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<CategoriesBloc, CategoriesState>(
          builder: (context, state) {
            state.whenOrNull();
            return state.maybeWhen(
              loaded: () {
                return Column(
                  children: [
                    AppBarInCategory(
                      brandName: brandName,
                    ),
                    const ListViewAndGridView(),
                  ],
                );
              },
              orElse: () {
                return const CustomCircularProgress();
              },
            );
          },
        ),
      ),
    );
  }
}

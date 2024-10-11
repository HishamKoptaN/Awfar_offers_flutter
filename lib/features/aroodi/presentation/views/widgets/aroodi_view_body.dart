import 'package:aroodi_app/features/aroodi/presentation/views/widgets/build_app_bar_widget.dart';
import 'package:aroodi_app/features/aroodi/presentation/views/widgets/custom_search_and_refresh_widget.dart';
import 'package:aroodi_app/features/aroodi/presentation/views/widgets/custom_tab_bar_view.dart';
import 'package:aroodi_app/features/aroodi/presentation/views/widgets/custom_tab_controller.dart';
import 'package:flutter/material.dart';

class AroodiViewBody extends StatelessWidget {
  const AroodiViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SafeArea(
            child: Column(
              children: [
                BuildAppBarWidget(),
                SizedBox(
                  height: 6,
                ),
                CustomSearchAndRefreshWidget(),
                SizedBox(
                  height: 8,
                ),
                CustomTabBar(),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(child: CustomTabBarView()),
      ],
    );
  }
}

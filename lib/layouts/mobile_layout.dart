import 'package:awfar_offer_app/features/stores/present/views/widgets/app_bar/build_app_bar_widget.dart';
import 'package:awfar_offer_app/features/stores/present/views/widgets/app_bar/custom_search_and_refresh_widget.dart';
import 'package:awfar_offer_app/features/stores/present/views/widgets/tab/custom_tab_bar_view.dart';
import 'package:awfar_offer_app/features/stores/present/views/widgets/tab/custom_tab_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const BuildAppBarWidget(),
              Gap(
                8.h,
              ),
              const CustomSearchAndRefreshWidget(),
              DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    const CustomTabBar(),
                    Gap(
                      1.h,
                    ),
                    CustomTabBarView(
                      childAspectRatio: 0.58,
                      crossAxisCount: 2,
                      width: width,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

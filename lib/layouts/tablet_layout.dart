import 'package:awfar_offer_app/features/stores/present/views/widgets/app_bar/build_app_bar_widget.dart';
import 'package:awfar_offer_app/features/stores/present/views/widgets/app_bar/custom_search_and_refresh_widget.dart';
import 'package:awfar_offer_app/features/stores/present/views/widgets/tab/custom_tab_bar_view.dart';
import 'package:awfar_offer_app/features/stores/present/views/widgets/tab/custom_tab_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const BuildAppBarWidget(),
        SizedBox(height: 8.h),
        const CustomSearchAndRefreshWidget(),
        Expanded(
          child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                const CustomTabBar(),
                Expanded(
                  child: CustomTabBarView(
                    childAspectRatio: 0.58,
                    crossAxisCount: 3,
                    width: width,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

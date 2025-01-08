import 'package:awfar_offer_app/core/utils/app_colors.dart';
import 'package:awfar_offer_app/features/stores/present/views/widgets/app_bar/build_app_bar_widget.dart';
import 'package:awfar_offer_app/features/stores/present/views/widgets/app_bar/custom_search_and_refresh_widget.dart';
import 'package:awfar_offer_app/features/stores/present/views/widgets/tab/custom_tab_bar_view.dart';
import 'package:awfar_offer_app/features/stores/present/views/widgets/tab/custom_tab_controller.dart';
import 'package:awfar_offer_app/layouts/widgets/drawer_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WebLayout extends StatelessWidget {
  const WebLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = kIsWeb
        ? MediaQuery.of(context).size.width * 2 / 3
        : MediaQuery.of(context).size.width * 5 / 6;
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
              ),
              child: const Center(
                child: Text(
                  "اعلان",
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          flex: 4,
          child: Column(
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
                          crossAxisCount: 4,
                          width: width,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        // const SizedBox(
        //   width: 16,
        // ),
        // Expanded(
        //   flex: 1,
        //   child: Padding(
        //     padding: const EdgeInsets.only(top: 8.0),
        //     child: DrawerWidget(
        //       onTap: (index) {

        //       },
        //     ),
        //   ),
        // ),
      ],
    );
  }
}

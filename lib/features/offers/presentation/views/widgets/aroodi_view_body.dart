import 'package:aroodi_app/features/admobe/banner_ad.dart';
import 'package:aroodi_app/features/offers/presentation/views/widgets/build_app_bar_widget.dart';
import 'package:aroodi_app/features/offers/presentation/views/widgets/custom_search_and_refresh_widget.dart';
import 'package:aroodi_app/features/offers/presentation/views/widgets/custom_tab_bar_view.dart';
import 'package:aroodi_app/features/offers/presentation/views/widgets/custom_tab_controller.dart';
import 'package:flutter/material.dart';

class OfferViewBody extends StatelessWidget {
  const OfferViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
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
              Tab(),
              SizedBox(
                height: 8,
              ),
              BannerAds(),
            ],
          ),
        ),
      ],
    );
  }
}

class Tab extends StatelessWidget {
  const Tab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: Column(
        children: [
          CustomTabBar(),
          SizedBox(
            height: 16,
          ),
          CustomTabBarView(),
        ],
      ),
    );
  }
}

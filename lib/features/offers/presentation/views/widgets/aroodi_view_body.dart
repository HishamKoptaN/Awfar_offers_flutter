import 'package:aroodi_app/features/offers/presentation/views/widgets/app_bar/build_app_bar_widget.dart';
import 'package:aroodi_app/features/offers/presentation/views/widgets/app_bar/custom_search_and_refresh_widget.dart';
import 'package:aroodi_app/features/offers/presentation/views/widgets/tab/custom_tab_bar_view.dart';
import 'package:aroodi_app/features/offers/presentation/views/widgets/tab/custom_tab_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/offers_response_model.dart';

class OfferViewBody extends StatelessWidget {
  OfferViewBody({
    super.key,
    required this.offersResponseModel,
  });
  OffersResponseModel offersResponseModel;
  @override
  Widget build(
    context,
  ) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const BuildAppBarWidget(),
              SizedBox(
                height: 6.h,
              ),
              CustomSearchAndRefreshWidget(
                offersResponseModel: offersResponseModel,
              ),
              const SizedBox(
                height: 8,
              ),
              Tab(
                offersResponseModel: offersResponseModel,
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Tab extends StatelessWidget {
  Tab({
    super.key,
    required this.offersResponseModel,
  });
  OffersResponseModel offersResponseModel;
  @override
  Widget build(context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          const CustomTabBar(),
          const SizedBox(
            height: 16,
          ),
          CustomTabBarView(
            offersResponseModel: offersResponseModel,
          ),
        ],
      ),
    );
  }
}

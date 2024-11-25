import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/offers_bloc.dart';
import '../bloc/offers_state.dart';
import 'widgets/app_bar/build_app_bar_widget.dart';
import 'widgets/app_bar/custom_search_and_refresh_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/widgets/custom_circular_progress.dart';
import '../../../../../core/widgets/custom_text.dart';
import 'widgets/tab/custom_tab_bar_view.dart';
import 'widgets/tab/custom_tab_controller.dart';

class OfferView extends StatefulWidget {
  const OfferView({
    super.key,
  });
  static const routeName = 'OfferView';
  @override
  State<OfferView> createState() => _OfferViewState();
}

class _OfferViewState extends State<OfferView> {
  @override
  Widget build(context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<OffersBloc, OffersState>(
          builder: (context, state) {
            return state.maybeWhen(
              offersLoaded: (
                offersResponseModel,
                favorites,
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
                          DefaultTabController(
                            length: 4,
                            child: Column(
                              children: [
                                const CustomTabBar(),
                                const SizedBox(
                                  height: 16,
                                ),
                                CustomTabBarView(
                                  offersResponseModel: offersResponseModel,
                                  favorites: favorites,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
              failure: (e) {
                return CustomText(
                  text: e,
                  fontSize: 15,
                );
              },
              loading: () {
                return const CustomCircularProgress();
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

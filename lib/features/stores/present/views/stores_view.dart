import 'package:awfar_offer_app/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import '../../../../core/widgets/custom_circular_progress.dart';
import '../bloc/stores_bloc.dart';
import '../bloc/stores_state.dart';
import 'widgets/app_bar/build_app_bar_widget.dart';
import 'widgets/app_bar/custom_search_and_refresh_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/tab/custom_tab_bar_view.dart';
import 'widgets/tab/custom_tab_controller.dart';

class StoresView extends StatefulWidget {
  const StoresView({
    super.key,
  });
  static const routeName = 'StoresView';
  @override
  State<StoresView> createState() => _OfferViewState();
}

class _OfferViewState extends State<StoresView> {
  @override
  Widget build(context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<StoresBloc, StoresState>(
          builder: (context, state) {
            return state.maybeWhen(
              loaded: () {
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
                                const CustomTabBarView(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
              failure: (error) {
                return Center(
                  child: CustomText(
                    text: error,
                    fontSize: 25.sp,
                  ),
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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/custom_circular_progress.dart';
import '../../../stores/presentation/bloc/stores_bloc.dart';
import '../../../stores/presentation/bloc/stores_state.dart';
import 'widgets/app_bar/build_app_bar_widget.dart';
import 'widgets/app_bar/custom_search_and_refresh_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                          SizedBox(
                            height: 6.h,
                          ),
                          CustomSearchAndRefreshWidget(),
                          const SizedBox(
                            height: 8,
                          ),
                          const DefaultTabController(
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

import 'package:awfar_offer_app/layouts/adaptive_layout_widget.dart';
import 'package:awfar_offer_app/layouts/mobile_layout.dart';
import 'package:awfar_offer_app/layouts/tablet_layout.dart';
import 'package:awfar_offer_app/layouts/web_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/custom_circular_progress.dart';
import '../bloc/stores_bloc.dart';
import '../bloc/stores_state.dart';

class StoresView extends StatefulWidget {
  const StoresView({super.key});
  static const routeName = 'StoresView';

  @override
  State<StoresView> createState() => _StoresViewState();
}

class _StoresViewState extends State<StoresView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<StoresBloc, StoresState>(
          builder: (context, state) {
            return state.maybeWhen(
              loaded: () {
                return AdaptiveLayout(
                  mobileLayout: (context) => const MobileLayout(),
                  tabletLayout: (context) => const TabletLayout(),
                  webLayout: (context) => const WebLayout(),
                );
              },
              failure: (error) {
                return Center(
                  child: Text(
                    error,
                    style: TextStyle(fontSize: 25.sp),
                  ),
                );
              },
              orElse: () => const CustomCircularProgress(),
            );
          },
        ),
      ),
    );
  }
}

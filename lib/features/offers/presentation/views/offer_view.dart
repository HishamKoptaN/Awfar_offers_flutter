import 'package:aroodi_app/core/networking/shared_pref.dart';
import 'package:aroodi_app/features/offers/presentation/views/widgets/aroodi_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/widgets/custom_circular_progress.dart';
import '../bloc/offers_bloc.dart';
import '../bloc/offers_event.dart';
import '../bloc/offers_state.dart';

class OfferView extends StatelessWidget {
  const OfferView({
    super.key,
  });
  static const routeName = 'aroodi';
  @override
  Widget build(context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => getIt<OffersBloc>()
            ..add(
              OffersEvent.getOffersEvent(
                governorateId: Prefs.getInt("countryId").toString(),
              ),
            ),
          child: BlocConsumer<OffersBloc, OffersState>(
            listener: (context, state) {},
            builder: (context, state) {
              return state.maybeWhen(
                offersLoaded: (
                  offersResponseModel,
                ) {
                  return OfferViewBody(
                    offersResponseModel: offersResponseModel,
                  );
                },
                orElse: () {
                  return const CustomCircularProgress();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

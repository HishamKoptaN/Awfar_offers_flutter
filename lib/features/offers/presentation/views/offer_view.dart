import 'package:aroodi_app/features/offers/presentation/views/widgets/aroodi_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/widgets/custom_circular_progress.dart';
import '../../../../core/widgets/custom_text.dart';
import '../bloc/offers_bloc.dart';
import '../bloc/offers_state.dart';

class OfferView extends StatefulWidget {
  const OfferView({
    super.key,
  });

  static const routeName = 'aroodi';

  @override
  State<OfferView> createState() => _OfferViewState();
}

class _OfferViewState extends State<OfferView> {
  @override
  Widget build(context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => getIt<OffersBloc>(),
          child: BlocConsumer<OffersBloc, OffersState>(
            listener: (context, state) {},
            builder: (context, state) {
              return state.maybeWhen(
                offersLoaded: (offersResponseModel) {
                  return OfferViewBody(
                    offersResponseModel: offersResponseModel,
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
      ),
    );
  }
}

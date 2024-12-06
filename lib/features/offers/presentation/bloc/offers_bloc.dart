import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/database/cache/shared_pref_helper.dart';
import '../../../../core/database/cache/shared_pref_keys.dart';
import '../../../../core/singletons/favs_offers_singleton.dart';
import '../../../../core/singletons/offers_singleton.dart';
import '../../domain/use_cases/get_offers_use_case.dart';
import 'offers_event.dart';
import 'offers_state.dart';

class OffersBloc extends Bloc<OffersEvent, OffersState> {
  final GetOffersUseCase getOffersUseCase;
  OffersBloc({
    required this.getOffersUseCase,
  }) : super(
          const OffersState.initialState(),
        ) {
    on<OffersEvent>(
      (event, emit) async {
        await event.when(
          getOffers: (governorateId) async {
            emit(
              const OffersState.loading(),
            );
            final result = await getOffersUseCase.getOffers(
              governorateId: governorateId,
            );
            await result.when(
              success: (
                offers,
              ) async {
                OffersSingleton.instance.offers = offers!;
                FavsOffersSingleton.instance.favs =
                    await SharedPrefHelper.getIntList(
                  key: SharedPrefKeys.favoriteOffers,
                );
                emit(
                  const OffersState.loaded(),
                );
              },
              failure: (error) {
                emit(
                  OffersState.failure(
                    error: error.error!,
                  ),
                );
              },
            );
          },
          updateFavs: (id, add) async {
            try {
              if (add) {
                await SharedPrefHelper.updateList(
                  key: SharedPrefKeys.favoriteOffers,
                  value: id,
                  add: true,
                );
              } else {
                await SharedPrefHelper.updateList(
                  key: SharedPrefKeys.favoriteOffers,
                  value: id,
                  add: false,
                );
              }
              FavsOffersSingleton.instance.favs =
                  await SharedPrefHelper.getIntList(
                key: SharedPrefKeys.favoriteOffers,
              );
              emit(
                const OffersState.loaded(),
              );
            } catch (error) {
              emit(
                OffersState.failure(
                  error: error.toString(),
                ),
              );
            }
          },
        );
      },
    );
  }
}

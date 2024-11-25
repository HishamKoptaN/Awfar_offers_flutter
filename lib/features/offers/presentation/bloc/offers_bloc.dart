import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/database/cache/shared_pref_helper.dart';
import '../../../../core/database/cache/shared_pref_keys.dart';
import '../../../../core/singletons/categories_singleton.dart';
import '../../../../core/singletons/stores_singleton.dart';
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
            List<int> favorites = await SharedPrefHelper.getIntList(
              key: SharedPrefKeys.favoriteOffers,
            );
            await result.when(
              success: (offersResponseModel) async {
                CategoriesSingleton.instance.categories =
                    offersResponseModel!.categories!;
                StoresSingleton.instance.stores = offersResponseModel.stores!;
                emit(
                  OffersState.offersLoaded(
                    offersResponseModel: offersResponseModel,
                    favorites: favorites,
                  ),
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
        );
      },
    );
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/database/cache/shared_pref_helper.dart';
import '../../../../core/database/cache/shared_pref_keys.dart';
import '../../../../core/singletons/favs/fav_stores_singleton.dart';
import '../../../../core/singletons/stores_singleton.dart';
import '../../domain/use_cases/get_stores_use_case.dart';
import 'stores_event.dart';
import 'stores_state.dart';

class StoresBloc extends Bloc<StoresEvent, StoresState> {
  final GetStoresUseCase getStoresUseCase;
  StoresBloc({
    required this.getStoresUseCase,
  }) : super(
          const StoresState.initialState(),
        ) {
    on<StoresEvent>(
      (event, emit) async {
        await event.when(
          getStores: (
            governorateId,
          ) async {
            emit(
              const StoresState.loading(),
            );
            final result = await getStoresUseCase.getStores(
              governorateId: governorateId,
            );
            await result.when(
              success: (
                stores,
              ) async {
                StoresSingleton.instance.stores = stores!;
                FavsStoresSingleton.instance.favs =
                    await SharedPrefHelper.getIntList(
                  key: SharedPrefKeys.favStores,
                );
                emit(
                  const StoresState.loaded(),
                );
              },
              failure: (error) {
                emit(
                  StoresState.failure(
                    error: error.error!,
                  ),
                );
              },
            );
          },
          updateFavs: (
            id,
            add,
          ) async {
            try {
              if (add) {
                await SharedPrefHelper.updateList(
                  key: SharedPrefKeys.favStores,
                  value: id,
                  add: true,
                );
              } else {
                await SharedPrefHelper.updateList(
                  key: SharedPrefKeys.favStores,
                  value: id,
                  add: false,
                );
              }
              FavsStoresSingleton.instance.favs =
                  await SharedPrefHelper.getIntList(
                key: SharedPrefKeys.favStores,
              );
              emit(
                const StoresState.loaded(),
              );
            } catch (error) {
              emit(
                StoresState.failure(
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

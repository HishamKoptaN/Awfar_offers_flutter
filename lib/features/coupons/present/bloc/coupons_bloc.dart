import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/database/cache/shared_pref_helper.dart';
import '../../../../core/database/cache/shared_pref_keys.dart';
import '../../../../core/singletons/favs_coupons_singleton.dart';
import '../../domain/use_cases/get_coupons_use_case.dart';
import 'coupons_event.dart';
import 'coupons_state.dart';

class CouponsBloc extends Bloc<CouponsEvent, CouponsState> {
  final GetCouponsUseCase getCouponsUseCase;
  CouponsBloc({
    required this.getCouponsUseCase,
  }) : super(
          const CouponsState.initial(),
        ) {
    on<CouponsEvent>(
      (event, emit) async {
        await event.when(
          getCoupons: (governorateId) async {
            final result = await getCouponsUseCase.getCoupons(
              governorateId: governorateId,
            );
            List<int> favorites = await SharedPrefHelper.getIntList(
              key: SharedPrefKeys.favoriteCoupons,
            );
            await result.when(
              success: (catgoryCoupons) async {
                emit(
                  CouponsState.loaded(
                    catgoryCoupons: catgoryCoupons!,
                    favorites: favorites,
                  ),
                );
              },
              failure: (error) async {
                emit(
                  CouponsState.failure(
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
                  key: SharedPrefKeys.favoriteCoupons,
                  value: id,
                  add: true,
                );
              } else {
                await SharedPrefHelper.updateList(
                  key: SharedPrefKeys.favoriteCoupons,
                  value: id,
                  add: false,
                );
              }
              FavsCouponsSingleton.instance.favs =
                  await SharedPrefHelper.getIntList(
                key: SharedPrefKeys.favoriteCoupons,
              );
              // emit(
              //   CouponsState.loaded(),
              // );
            } catch (error) {
              emit(
                CouponsState.failure(
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

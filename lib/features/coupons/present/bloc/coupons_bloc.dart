import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/database/cache/shared_pref_helper.dart';
import '../../../../core/database/cache/shared_pref_keys.dart';
import '../../../../core/singletons/coupons_singleton.dart';
import '../../../../core/singletons/favs/fav_coupons_singleton.dart';
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

            await result.when(
              success: (coupons) async {
                CouponsSingleton.instance.coupons = coupons!;
                emit(
                  const CouponsState.loaded(),
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
          updateFavs: (
            id,
            add,
          ) async {
            try {
              if (add) {
                await SharedPrefHelper.updateList(
                  key: SharedPrefKeys.favCoupons,
                  value: id,
                  add: true,
                );
              } else {
                await SharedPrefHelper.updateList(
                  key: SharedPrefKeys.favCoupons,
                  value: id,
                  add: false,
                );
              }
              FavCouponsSingleton.instance.favs =
                  await SharedPrefHelper.getIntList(
                key: SharedPrefKeys.favCoupons,
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

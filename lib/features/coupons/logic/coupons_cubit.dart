import 'package:aroodi_app/features/coupons/data/repos/coupons_repos.dart';
import 'package:aroodi_app/features/coupons/logic/coupons_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CouponsCubit extends Cubit<CouponsState> {
  CouponsCubit(this.couponsRepos) : super(CouponsStateInitial());

  final CouponsRepos couponsRepos;

  Future<void> getCoupons() async {
    try {
      emit(CouponsStateLoading());
      final result = await couponsRepos.getCoupons();
      result.when(
        failure: (error) {
          emit(CouponsStateFailure(message: error.error!.toString()));
        },
        success: (countriesModel) {
          emit(CouponsStateSuccess(couponsModel: countriesModel));
        },
      );
    } catch (e) {
      emit(CouponsStateFailure(
          message: 'An unexpected error occurred: ${e.toString()}'));
    }
  }
}

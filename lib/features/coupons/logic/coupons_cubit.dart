import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repos/coupons_repos.dart';
import 'coupons_state.dart';

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
        success: (couponsModel) {
          emit(CouponsStateSuccess(couponsModel: couponsModel));
        },
      );
    } catch (e) {
      emit(CouponsStateFailure(
          message: 'An unexpected error occurred: ${e.toString()}'));
    }
  }
}

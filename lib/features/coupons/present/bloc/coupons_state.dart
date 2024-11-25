import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/coupons_res_model.dart';
part 'coupons_state.freezed.dart';

@freezed
class CouponsState with _$CouponsState {
  const factory CouponsState.initial() = _Initial;
  const factory CouponsState.couponsloaded({
    required List<Coupon> catgoryCoupons,
    required List<int> favorites,
  }) = _Couponsloaded;
  const factory CouponsState.loading() = _Loading;
  const factory CouponsState.success() = _Success;
  const factory CouponsState.failure({
    required String error,
  }) = _Error;
}

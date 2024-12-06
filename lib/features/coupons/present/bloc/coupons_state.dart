import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/coupon.dart';
part 'coupons_state.freezed.dart';

@freezed
class CouponsState with _$CouponsState {
  const factory CouponsState.initial() = _Initial;
  const factory CouponsState.loaded({
    required List<Coupon> catgoryCoupons,
    required List<int> favorites,
  }) = _loaded;
  const factory CouponsState.loading() = _Loading;
  const factory CouponsState.success() = _Success;
  const factory CouponsState.failure({
    required String error,
  }) = _Error;
}

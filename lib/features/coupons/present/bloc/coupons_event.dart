import 'package:freezed_annotation/freezed_annotation.dart';
part 'coupons_event.freezed.dart';

@freezed
class CouponsEvent with _$CouponsEvent {
  const factory CouponsEvent.getCoupons({
    required int governorateId,
  }) = _GetCoupons;
  const factory CouponsEvent.updateFavs({
    required int id,
    required bool add,
  }) = _UpdateFavs;
}

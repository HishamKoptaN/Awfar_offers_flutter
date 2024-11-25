import 'package:freezed_annotation/freezed_annotation.dart';
part 'coupons_event.freezed.dart';

@freezed
class CouponsEvent with _$CouponsEvent {
  const factory CouponsEvent.getCoupons({
    required int governorateId,
  }) = _GetCoupons;
  const factory CouponsEvent.addToFavorites({
    required int governorateId,
  }) = _AddToFavorites;
  const factory CouponsEvent.removeFromFavorites({
    required int governorateId,
  }) = _RemoveFromFavorites;
}

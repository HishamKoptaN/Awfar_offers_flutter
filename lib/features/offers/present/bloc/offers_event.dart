import 'package:freezed_annotation/freezed_annotation.dart';
part 'offers_event.freezed.dart';

@freezed
class OffersEvent with _$OffersEvent {
  const factory OffersEvent.getOffers({
    required int governorateId,
  }) = _GetOffers;
  const factory OffersEvent.updateFavs({
    required int id,
    required bool add,
  }) = _UpdateFavs;
}

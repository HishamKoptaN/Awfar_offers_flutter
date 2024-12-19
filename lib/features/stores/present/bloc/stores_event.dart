import 'package:freezed_annotation/freezed_annotation.dart';
part 'stores_event.freezed.dart';

@freezed
class StoresEvent with _$StoresEvent {
  const factory StoresEvent.getStores({
    required int governorateId,
  }) = _GetStores;
  const factory StoresEvent.updateFavs({
    required int id,
    required bool add,
  }) = _UpdateFavs;
}

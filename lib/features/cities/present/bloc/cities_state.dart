import 'package:freezed_annotation/freezed_annotation.dart';
part 'cities_state.freezed.dart';

@freezed
class CitiesState with _$CitiesState {
  const factory CitiesState.initial() = _Initial;
  const factory CitiesState.loaded({
    required int? selectedCityId,
  }) = _loaded;
  const factory CitiesState.loading() = _Loading;
  const factory CitiesState.success() = _Success;
  const factory CitiesState.failure({
    required String error,
  }) = _Error;
}

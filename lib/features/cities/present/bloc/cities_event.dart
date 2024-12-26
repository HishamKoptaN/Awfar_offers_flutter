import 'package:freezed_annotation/freezed_annotation.dart';
part 'cities_event.freezed.dart';

@freezed
class CitiesEvent with _$CitiesEvent {
  const factory CitiesEvent.getCities() = _GetCities;
}

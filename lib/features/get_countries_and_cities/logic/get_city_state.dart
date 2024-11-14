import 'package:aroodi_app/features/get_countries_and_cities/data/models/get_city_model.dart';

abstract class GetCityState {}

final class GetCityInitial extends GetCityState {}

final class GetCityLoading extends GetCityState {}

final class GetCitySuccess extends GetCityState {
  final List<GetCityModel> getGovernorateModel;
  GetCitySuccess({required this.getGovernorateModel});
}

final class GetCityFailure extends GetCityState {
  final String message;

  GetCityFailure({required this.message});
}

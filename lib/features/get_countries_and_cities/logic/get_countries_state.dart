import 'package:aroodi_app/features/get_countries_and_cities/data/models/get_countries_model.dart';

abstract class GetCountriesState {}

final class GetCountriesInitial extends GetCountriesState {}

final class GetCountriesLoading extends GetCountriesState {}

final class GetCountriesSuccess extends GetCountriesState {
  final List<GetCountriesModel> getCountriesModel;
  GetCountriesSuccess({required this.getCountriesModel});
}

final class GetCountriesFailure extends GetCountriesState {
  final String message;

  GetCountriesFailure({required this.message});
}

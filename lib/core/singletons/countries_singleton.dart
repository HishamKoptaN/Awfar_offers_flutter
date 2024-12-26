import '../../features/countries/data/models/countries_res_model.dart';

class CountriesSingleton {
  List<Country> _countries = [];
  static final CountriesSingleton _instance = CountriesSingleton._internal();

  CountriesSingleton._internal();

  static CountriesSingleton get instance => _instance;

  List<Country> get countries => _countries;

  set countries(List<Country> countriesList) {
    _countries = countriesList;
  }

  void clear() {
    _countries = [];
  }
}

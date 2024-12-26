import '../../features/cities/data/models/cities_res_model.dart';

class CitiesSingleton {
  List<City> _cities = [];
  static final CitiesSingleton _instance = CitiesSingleton._internal();

  CitiesSingleton._internal();

  static CitiesSingleton get instance => _instance;

  List<City> get cities => _cities;

  set cities(List<City> citiesList) {
    _cities = citiesList;
  }

  void clear() {
    _cities = [];
  }
}

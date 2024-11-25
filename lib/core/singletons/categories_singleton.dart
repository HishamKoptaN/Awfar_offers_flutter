import '../../features/offers/data/models/offers_response_model.dart';

class CategoriesSingleton {
  List<Category> _categories = [];
  static final CategoriesSingleton _instance = CategoriesSingleton._internal();

  CategoriesSingleton._internal();

  static CategoriesSingleton get instance => _instance;

  List<Category> get categories => _categories;

  set categories(List<Category> categoriesList) {
    _categories = categoriesList;
  }

  void clear() {
    _categories = [];
  }
}

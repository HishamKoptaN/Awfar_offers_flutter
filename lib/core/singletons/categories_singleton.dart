import '../models/category.dart';

class CategoriesSingleton {
  static final CategoriesSingleton _instance = CategoriesSingleton._internal();
  CategoriesSingleton._internal();

  static CategoriesSingleton get instance => _instance;
  List<Category> _categories = [];

  List<Category> get categories => _categories;

  set categories(List<Category> categoriesList) {
    _categories = categoriesList;
  }

  void clear() {
    _categories = [];
  }
}

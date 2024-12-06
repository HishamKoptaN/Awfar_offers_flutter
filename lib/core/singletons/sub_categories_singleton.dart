import '../models/sub_category.dart';

class SubCategoriesSingleton {
  List<SubCategory> _subCategories = [];
  static final SubCategoriesSingleton _instance =
      SubCategoriesSingleton._internal();

  SubCategoriesSingleton._internal();

  static SubCategoriesSingleton get instance => _instance;

  List<SubCategory> get subCategories => _subCategories;

  set subCategories(
    List<SubCategory> subCategoriesList,
  ) {
    _subCategories = subCategoriesList;
  }

  void clear() {
    _subCategories = [];
  }
}

import '../models/sub_category_item.dart';

class SubCategoriesItemsSingleton {
  List<SubCategoryItem> _subCategoriesitems = [];
  static final SubCategoriesItemsSingleton _instance =
      SubCategoriesItemsSingleton._internal();

  SubCategoriesItemsSingleton._internal();

  static SubCategoriesItemsSingleton get instance => _instance;

  List<SubCategoryItem> get subCategoriesitems => _subCategoriesitems;

  set subCategoriesitems(
    List<SubCategoryItem> subCategoriesitemsList,
  ) {
    _subCategoriesitems = subCategoriesitemsList;
  }

  void clear() {
    _subCategoriesitems = [];
  }
}

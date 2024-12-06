import '../../../../core/models/sub_category_item.dart';
import '../../../../core/networking/api_result.dart';

abstract class SubCategoriesItemsRepo {
  Future<ApiResult<List<SubCategoryItem>>> getSubCategoriesItems({
    required int subCategoryId,
  });
}

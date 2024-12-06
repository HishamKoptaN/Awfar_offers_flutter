import '../../../../core/models/sub_category.dart';
import '../../../../core/networking/api_result.dart';

abstract class SubCategoriesRepo {
  Future<ApiResult<List<SubCategory>>> getSubCategories();
}

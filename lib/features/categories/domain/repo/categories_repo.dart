import '../../../../core/models/category.dart';
import '../../../../core/networking/api_result.dart';

abstract class CategoriesRepo {
  Future<ApiResult<List<Category>>> getCategories({
    required int governorateId,
  });
}

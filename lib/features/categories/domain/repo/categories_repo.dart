import '../../../../core/networking/api_result.dart';
import '../../data/models/categories_response_model.dart';

abstract class CategoriesRepo {
  Future<ApiResult<List<CategoriesResponseModel>>> getCategories();
}

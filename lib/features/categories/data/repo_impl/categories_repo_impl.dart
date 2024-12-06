import '../../../../core/errors/api_error_handler.dart';
import '../../../../core/models/category.dart';
import '../../../../core/networking/api_result.dart';
import '../../domain/repo/categories_repo.dart';
import '../data_sources/categories_api.dart';

class CategoriesRepoImpl implements CategoriesRepo {
  final CategoriesApi categoriesApi;
  CategoriesRepoImpl({
    required this.categoriesApi,
  });
  @override
  Future<ApiResult<List<Category>>> getCategories({
    required int governorateId,
  }) async {
    try {
      final response = await categoriesApi.getCategories(
        governorateId: governorateId,
      );
      return ApiResult.success(
        data: response,
      );
    } catch (error) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(
          error: error,
        ),
      );
    }
  }
}

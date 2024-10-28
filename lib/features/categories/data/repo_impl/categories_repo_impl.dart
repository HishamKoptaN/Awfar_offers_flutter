import '../../../../core/errors/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../domain/repo/categories_repo.dart';
import '../data_sources/categories_api.dart';
import '../models/categories_response_model.dart';

class CategoriesRepoImpl implements CategoriesRepo {
  final CategoriesApi categoriesApi;
  CategoriesRepoImpl(
    this.categoriesApi,
  );
  @override
  Future<ApiResult<List<CategoriesResponseModel>>> getCategories() async {
    try {
      final response = await categoriesApi.getCategories();
      return ApiResult.success(
        response,
      );
    } catch (error) {
      return ApiResult.failure(
        ApiErrorHandler.handle(
          error,
        ),
      );
    }
  }
}

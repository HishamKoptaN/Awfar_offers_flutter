import '../../../../core/errors/api_error_handler.dart';
import '../../../../core/models/sub_category.dart';
import '../../../../core/networking/api_result.dart';
import '../../domain/repo/sub_categories_repo.dart';
import '../data_sources/sub_categories_api.dart';

class SubCategoriesRepoImpl implements SubCategoriesRepo {
  final SubCategoriesApi subcategoriesApi;
  SubCategoriesRepoImpl({
    required this.subcategoriesApi,
  });
  @override
  Future<ApiResult<List<SubCategory>>> getSubCategories() async {
    try {
      final response = await subcategoriesApi.getSubCategories();
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

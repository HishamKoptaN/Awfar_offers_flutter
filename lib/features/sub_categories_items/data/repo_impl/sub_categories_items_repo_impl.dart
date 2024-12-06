import '../../../../core/errors/api_error_handler.dart';
import '../../../../core/models/sub_category_item.dart';
import '../../../../core/networking/api_result.dart';
import '../../domain/repo/sub_categories_items_repo.dart';
import '../data_sources/sub_categories_items_api.dart';

class SubCategoriesItemsRepoImpl implements SubCategoriesItemsRepo {
  final SubCategoriesItemsApi subcategoriesItemsApi;
  SubCategoriesItemsRepoImpl({
    required this.subcategoriesItemsApi,
  });
  @override
  Future<ApiResult<List<SubCategoryItem>>> getSubCategoriesItems({
    required int subCategoryId,
  }) async {
    try {
      final response = await subcategoriesItemsApi.getSubCategoriesItems(
        subCategoryId: subCategoryId,
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

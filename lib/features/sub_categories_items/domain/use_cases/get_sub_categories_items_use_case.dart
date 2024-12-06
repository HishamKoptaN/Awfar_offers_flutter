import '../../../../core/models/sub_category_item.dart';
import '../../../../core/networking/api_result.dart';
import '../repo/sub_categories_items_repo.dart';

class GetSubCategoriesItemsUseCase {
  final SubCategoriesItemsRepo subcategoriesRepo;
  GetSubCategoriesItemsUseCase({
    required this.subcategoriesRepo,
  });
  Future<ApiResult<List<SubCategoryItem>>> getSubCategoriesItems({
    required int subCategoryId,
  }) async {
    return await subcategoriesRepo.getSubCategoriesItems(
      subCategoryId: subCategoryId,
    );
  }
}

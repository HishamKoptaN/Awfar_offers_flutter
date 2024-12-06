import '../../../../core/models/sub_category.dart';
import '../../../../core/networking/api_result.dart';
import '../repo/sub_categories_repo.dart';

class GetSubCategoriesUseCase {
  final SubCategoriesRepo subcategoriesRepo;
  GetSubCategoriesUseCase({
    required this.subcategoriesRepo,
  });
  Future<ApiResult<List<SubCategory>>> getCategories() async {
    return await subcategoriesRepo.getSubCategories();
  }
}

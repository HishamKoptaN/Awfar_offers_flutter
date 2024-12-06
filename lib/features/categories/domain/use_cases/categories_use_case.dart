import '../../../../core/models/category.dart';
import '../../../../core/networking/api_result.dart';
import '../repo/categories_repo.dart';

class GetCategoriesUseCase {
  final CategoriesRepo categoriesRepo;
  GetCategoriesUseCase({
    required this.categoriesRepo,
  });
  Future<ApiResult<List<Category>>> getCategories({
    required int governorateId,
  }) async {
    return await categoriesRepo.getCategories(
      governorateId: governorateId,
    );
  }
}

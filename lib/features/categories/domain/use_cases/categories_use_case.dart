import 'package:aroodi_app/features/categories/data/models/categories_response_model.dart';
import '../../../../core/networking/api_result.dart';
import '../repo/categories_repo.dart';

class GetCategoriesUseCase {
  final CategoriesRepo categoriesRepo;
  GetCategoriesUseCase(
    this.categoriesRepo,
  );
  Future<ApiResult<List<CategoriesResponseModel>>> getCategories() async {
    return await categoriesRepo.getCategories();
  }
}

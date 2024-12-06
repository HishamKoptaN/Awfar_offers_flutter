import '../../../../core/models/product.dart';
import '../../../../core/networking/api_result.dart';
import '../repo/products_repo.dart';

class GetProductsUseCase {
  final ProductsRepo productsRepo;
  GetProductsUseCase({
    required this.productsRepo,
  });
  Future<ApiResult<List<Product>>> getProducts({
    required int subCategoryId,
  }) async {
    return await productsRepo.getProducts(
      subCategoryId: subCategoryId,
    );
  }
}

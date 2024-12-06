import '../../../../core/errors/api_error_handler.dart';
import '../../../../core/models/product.dart';
import '../../../../core/networking/api_result.dart';
import '../../domain/repo/products_repo.dart';
import '../data_sources/products_api.dart';

class ProductsRepoImpl implements ProductsRepo {
  final ProductsApi productsApi;
  ProductsRepoImpl({
    required this.productsApi,
  });
  @override
  Future<ApiResult<List<Product>>> getProducts({
    required int subCategoryId,
  }) async {
    try {
      final response = await productsApi.getProducts(
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

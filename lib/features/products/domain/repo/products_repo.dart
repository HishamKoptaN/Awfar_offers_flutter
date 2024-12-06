import '../../../../core/models/product.dart';
import '../../../../core/networking/api_result.dart';

abstract class ProductsRepo {
  Future<ApiResult<List<Product>>> getProducts({
    required int subCategoryId,
  });
}

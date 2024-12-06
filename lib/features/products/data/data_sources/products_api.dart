import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/networking/api_constants.dart';
import '../../../../core/models/product.dart';
part 'products_api.g.dart';

@RestApi(
  baseUrl: ApiConstants.apiBaseUrl,
)
abstract class ProductsApi {
  factory ProductsApi(
    Dio dio, {
    String baseUrl,
  }) = _ProductsApi;
  // ! get Products
  @GET(
    '${ApiConstants.products}/{subCategoryId}',
  )
  Future<List<Product>> getProducts({
    @Path('subCategoryId') required int subCategoryId,
  });
}

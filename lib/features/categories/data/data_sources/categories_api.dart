import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/networking/api_constants.dart';
import '../../../../core/models/category.dart';
part 'categories_api.g.dart';

@RestApi(
  baseUrl: ApiConstants.apiBaseUrl,
)
abstract class CategoriesApi {
  factory CategoriesApi(
    Dio dio, {
    String baseUrl,
  }) = _CategoriesApi;
  // ! get getCategories
  @GET(
    '${ApiConstants.categories}/{governorateId}',
  )
  Future<List<Category>> getCategories({
    @Path('governorateId') required int governorateId,
  });
}

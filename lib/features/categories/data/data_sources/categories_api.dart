import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/networking/api_constants.dart';
import '../models/categories_response_model.dart';
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
    ApiConstants.categories,
  )
  Future<List<CategoriesResponseModel>> getCategories();
}

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/networking/api_constants.dart';
import '../../../../core/models/sub_category.dart';
part 'sub_categories_api.g.dart';

@RestApi(
  baseUrl: ApiConstants.apiBaseUrl,
)
abstract class SubCategoriesApi {
  factory SubCategoriesApi(
    Dio dio, {
    String baseUrl,
  }) = _SubCategoriesApi;
  // ! get getSubCategories
  @GET(
    ApiConstants.subCategories,
  )
  Future<List<SubCategory>> getSubCategories();
}

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/networking/api_constants.dart';
import '../../../../core/models/sub_category_item.dart';
part 'sub_categories_items_api.g.dart';

@RestApi(
  baseUrl: ApiConstants.apiBaseUrl,
)
abstract class SubCategoriesItemsApi {
  factory SubCategoriesItemsApi(
    Dio dio, {
    String baseUrl,
  }) = _SubCategoriesItemsApi;
  // ! get getSubCategoriesItems
  @GET(
    '${ApiConstants.subCategoriesItems}/{subCategoryId}',
  )
  Future<List<SubCategoryItem>> getSubCategoriesItems({
    @Path('subCategoryId') required int subCategoryId,
  });
}

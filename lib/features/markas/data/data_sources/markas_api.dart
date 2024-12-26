import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/networking/api_constants.dart';
import '../../../../core/models/marka.dart';
part 'markas_api.g.dart';

@RestApi(
  baseUrl: ApiConstants.apiBaseUrl,
)
abstract class MarkasApi {
  factory MarkasApi(
    Dio dio, {
    String baseUrl,
  }) = _MarkasApi;
  // ! get getMarkas
  @GET(
    '${ApiConstants.markas}/{subCategoryId}',
  )
  Future<List<Marka>> getMarkas({
    @Path('subCategoryId') required int subCategoryId,
  });
}

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/networking/api_constants.dart';
import '../../../../core/models/store.dart';
part 'stores_api.g.dart';

@RestApi(
  baseUrl: ApiConstants.apiBaseUrl,
)
abstract class StoresApi {
  factory StoresApi(
    Dio dio, {
    String baseUrl,
  }) = _StoresApi;
  @GET(
    '${ApiConstants.stores}/{governorateId}',
  )
  Future<List<Store>> getStores({
    @Path('governorateId') required int governorateId,
  });
}

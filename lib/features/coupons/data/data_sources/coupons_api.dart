import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/networking/api_constants.dart';
import '../models/coupons_res_model.dart';
part 'coupons_api.g.dart';

@RestApi(
  baseUrl: ApiConstants.apiBaseUrl,
)
abstract class CouponsApi {
  factory CouponsApi(
    Dio dio, {
    String baseUrl,
  }) = _CouponsApi;
  @GET(
    '${ApiConstants.coupons}/{governorateId}',
  )
  Future<List<Coupon>> getCoupons({
    @Path('governorateId') required int governorateId,
  });
}

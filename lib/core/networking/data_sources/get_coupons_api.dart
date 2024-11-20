import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/networking/api_constants.dart';
import '../../../features/coupons/data/logic/coupon_model.dart';
part 'get_coupons_api.g.dart';

@RestApi(
  baseUrl: ApiConstants.apiBaseUrl,
)
abstract class GetCouponsApi {
  factory GetCouponsApi(
    Dio dio, {
    String baseUrl,
  }) = _GetCouponsApi;
  @GET(
    ApiConstants.coupons,
  )
  Future<List<CouponModel>> getCoupons();
}

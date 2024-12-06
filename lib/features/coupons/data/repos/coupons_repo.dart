import '../../../../../core/networking/api_result.dart';
import '../models/coupon.dart';

abstract class CouponsRepo {
  Future<ApiResult<List<Coupon>>> getCoupons({
    required int governorateId,
  });
}

import '../../../../../core/networking/api_result.dart';
import '../models/coupons_res_model.dart';

abstract class CouponsRepo {
  Future<ApiResult<List<Coupon>>> getCoupons({
    required int governorateId,
  });
}

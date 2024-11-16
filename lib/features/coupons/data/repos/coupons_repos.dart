import 'package:aroodi_app/core/networking/data_sources/get_coupons_api.dart';
import 'package:aroodi_app/features/coupons/data/logic/coupon_model.dart';

import '../../../../../core/errors/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';

class CouponsRepos {
  final GetCouponsApi getCouponsApi;
  CouponsRepos(
    this.getCouponsApi,
  );

  Future<ApiResult<List<CouponModel>>> getCoupons() async {
    try {
      final response = await getCouponsApi.getCoupons();
      return ApiResult.success(
        response,
      );
    } catch (error) {
      return ApiResult.failure(
        ApiErrorHandler.handle(
          error,
        ),
      );
    }
  }
}

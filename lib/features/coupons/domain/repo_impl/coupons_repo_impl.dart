import '../../../../core/errors/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../data/data_sources/coupons_api.dart';
import '../../data/models/coupons_res_model.dart';
import '../../data/repos/coupons_repo.dart';

class CouponsRepoImpl implements CouponsRepo {
  CouponsApi couponsApi;
  CouponsRepoImpl({
    required this.couponsApi,
  });
  @override
  Future<ApiResult<List<Coupon>>> getCoupons({
    required int governorateId,
  }) async {
    try {
      final response = await couponsApi.getCoupons(
        governorateId: governorateId,
      );
      return ApiResult.success(
        data: response,
      );
    } catch (error) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(
          error: error,
        ),
      );
    }
  }
}

import '../../../../core/networking/api_result.dart';
import '../../data/models/coupons_res_model.dart';
import '../../data/repos/coupons_repo.dart';

class GetCouponsUseCase {
  final CouponsRepo couponsRepo;
  GetCouponsUseCase({
    required this.couponsRepo,
  });
  Future<ApiResult<List<Coupon>>> getCoupons({
    required int governorateId,
  }) async {
    return await couponsRepo.getCoupons(
      governorateId: governorateId,
    );
  }
}

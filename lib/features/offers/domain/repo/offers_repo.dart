import '../../../../../core/networking/api_result.dart';
import '../../data/models/offers_response_model.dart';

abstract class OffersRepo {
  Future<ApiResult<OffersResponseModel>> getOffers({
    required int governorateId,
  });
}

import '../../../../../core/networking/api_result.dart';
import '../../../../core/models/offer.dart';

abstract class OffersRepo {
  Future<ApiResult<List<Offer>>> getOffers({
    required int governorateId,
  });
}

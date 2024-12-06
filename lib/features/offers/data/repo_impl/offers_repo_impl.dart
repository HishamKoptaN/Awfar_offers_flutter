import '../../../../../core/errors/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../core/models/offer.dart';
import '../../domain/repo/offers_repo.dart';
import '../data_sources/offers_api.dart';

class OffersRepoImpl implements OffersRepo {
  final OffersApi offersApi;
  OffersRepoImpl({
    required this.offersApi,
  });
  @override
  Future<ApiResult<List<Offer>>> getOffers({
    required int governorateId,
  }) async {
    try {
      final response = await offersApi.getOffers(
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

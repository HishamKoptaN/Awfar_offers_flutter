import '../../../../../core/errors/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../domain/repo/offers_repo.dart';
import '../data_sources/offers_api.dart';
import '../models/offers_response_model.dart';

class OffersRepoImpl implements OffersRepo {
  final OffersApi offersApi;
  OffersRepoImpl({
    required this.offersApi,
  });
  @override
  Future<ApiResult<OffersResponseModel>> getOffers({
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

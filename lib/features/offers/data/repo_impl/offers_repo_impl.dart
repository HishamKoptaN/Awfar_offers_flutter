import '../../../../../core/errors/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../domain/repo/offers_repo.dart';
import '../../../../core/networking/data_sources/offers_api.dart';
import '../models/offers_response_model.dart';

class OffersRepoImpl implements OffersRepo {
  final OffersApi offersApi;
  OffersRepoImpl(
    this.offersApi,
  );
  @override
  Future<ApiResult<OffersResponseModel>> getOffers({
    required String governorateId,
  }) async {
    try {
      final response = await offersApi.getOffers(
        governorateId: governorateId,
      );
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

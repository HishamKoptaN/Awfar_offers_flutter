import '../../../../../core/networking/api_result.dart';
import '../../data/models/offers_response_model.dart';
import '../repo/offers_repo.dart';

class GetOffersUseCase {
  final OffersRepo offersRepo;
  GetOffersUseCase(
    this.offersRepo,
  );
  Future<ApiResult<OffersResponseModel>> getOffers({
    required String governorateId,
  }) async {
    return await offersRepo.getOffers(
      governorateId: governorateId,
    );
  }
}

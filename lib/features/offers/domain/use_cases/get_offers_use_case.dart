import '../../../../../core/networking/api_result.dart';
import '../../../../core/models/offer.dart';
import '../repo/offers_repo.dart';

class GetOffersUseCase {
  final OffersRepo offersRepo;
  GetOffersUseCase({
    required this.offersRepo,
  });
  Future<ApiResult<List<Offer>>> getOffers({
    required int governorateId,
  }) async {
    return await offersRepo.getOffers(
      governorateId: governorateId,
    );
  }
}

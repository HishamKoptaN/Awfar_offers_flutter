import '../../../../../core/networking/api_result.dart';
import '../../../../core/models/store.dart';
import '../repo/stores_repo.dart';

class GetStoresUseCase {
  final StoresRepo offersRepo;
  GetStoresUseCase({
    required this.offersRepo,
  });
  Future<ApiResult<List<Store>>> getStores({
    required int governorateId,
  }) async {
    return await offersRepo.getStores(
      governorateId: governorateId,
    );
  }
}

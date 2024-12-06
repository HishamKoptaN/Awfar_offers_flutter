import '../../../../../core/errors/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../core/models/store.dart';
import '../../domain/repo/stores_repo.dart';
import '../data_sources/stores_api.dart';

class StoresRepoImpl implements StoresRepo {
  final StoresApi storesApi;
  StoresRepoImpl({
    required this.storesApi,
  });
  @override
  Future<ApiResult<List<Store>>> getStores({
    required int governorateId,
  }) async {
    try {
      final response = await storesApi.getStores(
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

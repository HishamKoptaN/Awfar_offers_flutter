import '../../../../core/errors/api_error_handler.dart';
import '../../../../core/global_methods.dart';
import '../../../../core/networking/api_result.dart';
import '../../domain/repo/cities_repo.dart';
import '../data_sources/cities_api.dart';
import '../models/cities_res_model.dart';

class CitiesRepoImpl implements CitiesRepo {
  CitiesApi citiesApi;
  CitiesRepoImpl({
    required this.citiesApi,
  });
  @override
  Future<ApiResult<List<City>>> getCities() async {
    try {
      final response = await citiesApi.getCities();
      int? selectedCityId;
      await getCity().then(
        (dovernorateId) {
          selectedCityId = dovernorateId;
        },
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

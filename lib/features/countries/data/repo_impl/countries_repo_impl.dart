import '../../../../core/errors/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../domain/repo/countries_repo.dart';
import '../data_sources/countries_api.dart';
import '../models/countries_res_model.dart';

class CountriesRepoImpl implements CountriesRepo {
  final CountriesApi countriesApi;
  CountriesRepoImpl({
    required this.countriesApi,
  });
  @override
  Future<ApiResult<List<Country>>> getCountries() async {
    try {
      final response = await countriesApi.getCountries();
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

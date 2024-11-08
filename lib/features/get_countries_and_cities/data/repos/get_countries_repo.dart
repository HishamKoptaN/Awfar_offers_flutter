import 'package:aroodi_app/features/get_countries_and_cities/data/models/get_countries_model.dart';
import 'package:aroodi_app/core/networking/data_sources/get_countries_api.dart';
import '../../../../../core/errors/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';

class GetCountriesRepo {
  final GetCountriesApi getCountriesApi;
  GetCountriesRepo(
    this.getCountriesApi,
  );

  Future<ApiResult<List<GetCountriesModel>>> getCountries() async {
    try {
      final response = await getCountriesApi.getCountries();
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

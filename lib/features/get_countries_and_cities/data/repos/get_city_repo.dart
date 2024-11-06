import 'package:aroodi_app/core/networking/data_sources/get_city_api.dart';
import 'package:aroodi_app/features/get_countries_and_cities/data/models/get_city_model.dart';
import '../../../../../core/errors/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';

class GetCityRepo {
  final GetCityApi getCityApi;
  GetCityRepo(
    this.getCityApi,
  );

  Future<ApiResult<List<GetCityModel>>> getCity() async {
    try {
      final response = await getCityApi.getCity();
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

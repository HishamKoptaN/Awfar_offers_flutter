import 'package:aroodi_app/features/get_countries_and_cities/data/models/get_city_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/networking/api_constants.dart';
part 'get_city_api.g.dart';

@RestApi(
  baseUrl: ApiConstants.apiBaseUrl,
)
abstract class GetCityApi {
  factory GetCityApi(
    Dio dio, {
    String baseUrl,
  }) = _GetCityApi;
  @GET(
    ApiConstants.governorates,
  )
  Future<List<GetCityModel>> getCity();
}

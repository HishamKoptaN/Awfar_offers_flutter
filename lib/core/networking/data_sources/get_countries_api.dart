import 'package:aroodi_app/features/get_countries_and_cities/data/models/get_countries_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/networking/api_constants.dart';
part 'get_countries_api.g.dart';

@RestApi(
  baseUrl: ApiConstants.apiBaseUrl,
)
abstract class GetCountriesApi {
  factory GetCountriesApi(
    Dio dio, {
    String baseUrl,
  }) = _GetCountriesApi;
  @GET(
    ApiConstants.countries,
  )
  Future<List<GetCountriesModel>> getCountries();
}

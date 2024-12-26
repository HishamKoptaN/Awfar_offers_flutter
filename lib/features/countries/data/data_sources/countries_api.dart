import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/networking/api_constants.dart';
import '../models/countries_res_model.dart';
part 'countries_api.g.dart';

@RestApi(
  baseUrl: ApiConstants.apiBaseUrl,
)
abstract class CountriesApi {
  factory CountriesApi(
    Dio dio, {
    String baseUrl,
  }) = _CountriesApi;
  @GET(
    ApiConstants.countries,
  )
  Future<List<Country>> getCountries();
}

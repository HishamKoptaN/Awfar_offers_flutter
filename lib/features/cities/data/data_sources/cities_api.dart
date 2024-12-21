import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/networking/api_constants.dart';
import '../models/cities_res_model.dart';
part 'cities_api.g.dart';

@RestApi(
  baseUrl: ApiConstants.apiBaseUrl,
)
abstract class CitiesApi {
  factory CitiesApi(
    Dio dio, {
    String baseUrl,
  }) = _CitiesApi;
  @GET(
    ApiConstants.cities,
  )
  Future<List<City>> getCities();
}

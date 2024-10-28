import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/networking/api_constants.dart';
import '../models/check_response_model.dart';
part 'main_production_api.g.dart';

@RestApi(
  baseUrl: ApiConstants.apiBaseUrl,
)
abstract class MainProductionApi {
  factory MainProductionApi(
    Dio dio, {
    String baseUrl,
  }) = _MainProductionApi;
  @POST(
    ApiConstants.check,
  )
  Future<SettingsResponseModel> getSettings();
}

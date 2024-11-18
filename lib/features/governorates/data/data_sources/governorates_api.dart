import 'package:awfaroffers/features/governorates/data/models/governorates_res_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/networking/api_constants.dart';
part 'governorates_api.g.dart';

@RestApi(
  baseUrl: ApiConstants.apiBaseUrl,
)
abstract class GovernoratesApi {
  factory GovernoratesApi(
    Dio dio, {
    String baseUrl,
  }) = _GovernoratesApi;
  @GET(
    ApiConstants.governorates,
  )
  Future<List<Governorate>> getGovernorates();
}

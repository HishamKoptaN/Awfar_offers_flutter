import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/networking/api_constants.dart';
import '../models/offers_response_model.dart';
part 'offers_api.g.dart';

@RestApi(
  baseUrl: ApiConstants.apiBaseUrl,
)
abstract class OffersApi {
  factory OffersApi(
    Dio dio, {
    String baseUrl,
  }) = _OffersApi;
  @GET(
    '${ApiConstants.offers}/{governorateId}',
  )
  Future<OffersResponseModel> getOffers({
    @Path(
      'governorateId',
    )
    required String governorateId,
  });
}

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/networking/api_constants.dart';
import '../../../../core/singletons/user_singleton.dart';
import '../../../external_notifications/data/model/save_notifcations_data_req_body_model.dart';

part 'main_api.g.dart';

@RestApi(
  baseUrl: ApiConstants.apiAuthBaseUrl,
)
abstract class MainApi {
  factory MainApi(
    Dio dio, {
    String? baseUrl,
  }) = _MainApi;

  @POST(
    ApiConstants.check,
  )
  Future<User> check();
}

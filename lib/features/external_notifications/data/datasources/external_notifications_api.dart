import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/networking/api_constants.dart';
import '../model/save_notifcations_data_req_body_model.dart';
part 'external_notifications_api.g.dart';

@RestApi(
  baseUrl: ApiConstants.apiBaseUrl,
)
abstract class ExternalNotificationsApi {
  factory ExternalNotificationsApi(
    Dio dio, {
    String baseUrl,
  }) = _ExternalNotificationsApi;

  @POST(
    ApiConstants.externalNotifications,
  )
  Future<void> saveNotificationData({
    @Body()
    required SaveNotifcationsDataReqBodyModel saveNotifcationsDataReqBodyModel,
  });
}

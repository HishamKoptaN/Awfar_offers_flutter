import '../../../../core/errors/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../data/model/save_notifcations_data_req_body_model.dart';
import '../../data/datasources/external_notifications_api.dart';
import '../../data/repo/external_notifications_repo.dart';

class ExternalNotificationsRepoImpl implements ExternalNotificationsRepo {
  final ExternalNotificationsApi externalnotificationsApi;
  ExternalNotificationsRepoImpl({
    required this.externalnotificationsApi,
  });

  @override
  Future<ApiResult<void>> saveNotificationsData({
    required SaveNotifcationsDataReqBodyModel saveNotifcationsDataReqBodyModel,
  }) async {
    try {
      await externalnotificationsApi.saveNotificationData(
        saveNotifcationsDataReqBodyModel: saveNotifcationsDataReqBodyModel,
      );
      return const ApiResult.success(
        data: null,
      );
    } catch (error) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(
          error: error,
        ),
      );
    }
  }
}

import '../../../../core/networking/api_result.dart';
import '../model/save_notifcations_data_req_body_model.dart';

abstract class ExternalNotificationsRepo {
  Future<ApiResult<void>> saveNotificationsData({
    required SaveNotifcationsDataReqBodyModel saveNotifcationsDataReqBodyModel,
  });
}

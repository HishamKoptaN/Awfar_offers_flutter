import '../../../../core/networking/api_result.dart';
import '../../data/model/save_notifcations_data_req_body_model.dart';
import '../../data/repo/external_notifications_repo.dart';

class SaveExternalNotificationsDataUseCase {
  final ExternalNotificationsRepo externalNotificationsRepo;
  SaveExternalNotificationsDataUseCase({
    required this.externalNotificationsRepo,
  });
  Future<ApiResult<void>> saveNotificationsData({
    required SaveNotifcationsDataReqBodyModel saveNotifcationsDataReqBodyModel,
  }) async {
    return await externalNotificationsRepo.saveNotificationsData(
      saveNotifcationsDataReqBodyModel: saveNotifcationsDataReqBodyModel,
    );
  }
}

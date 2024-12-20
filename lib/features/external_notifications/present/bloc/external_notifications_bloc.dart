import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/deviceu_utils.dart';
import '../../data/model/save_notifcations_data_req_body_model.dart';
import '../../domain/use_cases/save_notifications_data_use_case.dart';
import 'external_notifications_event.dart';
import 'external_notifications_state.dart';

class ExternalNotificationsBloc
    extends Bloc<ExternalNotificationsEvent, ExternalNotificationsState> {
  final SaveExternalNotificationsDataUseCase saveNotificationsDataUseCase;
  ExternalNotificationsBloc({
    required this.saveNotificationsDataUseCase,
  }) : super(
          const ExternalNotificationsState.loading(),
        ) {
    on<ExternalNotificationsEvent>(
      (event, emit) async {
        await event.when(
          saveExternalNotificationData: (governorateId) async {
            final deviceUtils = DeviceUtils();
            String? deviceId = await deviceUtils.getDeviceId();
            String? fcmToken = await FirebaseMessaging.instance.getToken();
            await saveNotificationsDataUseCase.saveNotificationsData(
              saveNotifcationsDataReqBodyModel:
                  SaveNotifcationsDataReqBodyModel(
                deviceId: deviceId,
                governorateId: governorateId,
                fcmToken: fcmToken,
              ),
            );
          },
        );
      },
    );
  }
}

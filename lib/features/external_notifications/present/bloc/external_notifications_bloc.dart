import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/database/cache/shared_pref_helper.dart';
import '../../../../core/database/cache/shared_pref_keys.dart';
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
          saveTopic: (
            cityTopic,
          ) async {
            String? userTopic = await SharedPrefHelper.getString(
              key: SharedPrefKeys.userTopic,
            );
            //! اكتب هذه الدالة لتخزين الموضوع الحالي
            if (userTopic != null && userTopic != cityTopic) {
              //! إذا كان المستخدم مسجلاً في موضوع آخر، قم بإلغاء التسجيل أولاً
              await FirebaseMessaging.instance.unsubscribeFromTopic(
                userTopic,
              );
            }
            //! الآن، قم بتسجيل المستخدم في الموضوع الجديد
            await FirebaseMessaging.instance.subscribeToTopic(
              cityTopic.toString(),
            );
            //! بعد التسجيل في الموضوع الجديد، يمكنك تخزين الموضوع الجديد في مكان ما
            await SharedPrefHelper.setData(
              key: SharedPrefKeys.userTopic,
              value: cityTopic.toString(),
            );
          },
        );
      },
    );
  }
}

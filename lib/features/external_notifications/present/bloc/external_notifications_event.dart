import 'package:freezed_annotation/freezed_annotation.dart';
part 'external_notifications_event.freezed.dart';

@freezed
class ExternalNotificationsEvent with _$ExternalNotificationsEvent {
  const factory ExternalNotificationsEvent.saveExternalNotificationData({
    required int governorateId,
  }) = _SaveExternalNotificationData;
}

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/errors/api_error_model.dart';
part 'external_notifications_state.freezed.dart';

@freezed
class ExternalNotificationsState with _$ExternalNotificationsState {
  const factory ExternalNotificationsState.loading() = _loading;
  const factory ExternalNotificationsState.failure({
    required ApiErrorModel apiErrorModel,
  }) = _Failure;
}

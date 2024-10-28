import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_production_event.freezed.dart';

@freezed
class MainProductionEvent with _$MainProductionEvent {
  const factory MainProductionEvent.getSettingsEvent() = _GetSettingsEvent;
  const factory MainProductionEvent.checkEmailVerification() =
      _CheckEmailVerification;
}

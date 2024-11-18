import 'package:freezed_annotation/freezed_annotation.dart';
part 'governorates_event.freezed.dart';

@freezed
class GovernoratesEvent with _$GovernoratesEvent {
  const factory GovernoratesEvent.getGvernorates() = _GetGvernorates;
}

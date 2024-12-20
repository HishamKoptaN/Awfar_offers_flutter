import 'package:freezed_annotation/freezed_annotation.dart';
part 'markas_event.freezed.dart';

@freezed
class MarkasEvent with _$MarkasEvent {
  const factory MarkasEvent.getMarkas({
    required int subCategoryId,
  }) = _GetMarkas;
}

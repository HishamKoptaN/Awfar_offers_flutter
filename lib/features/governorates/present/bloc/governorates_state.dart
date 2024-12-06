import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/governorates_res_model.dart';
part 'governorates_state.freezed.dart';

@freezed
class GovernoratesState with _$GovernoratesState {
  const factory GovernoratesState.initial() = _Initial;
  const factory GovernoratesState.governoratesloaded({
    required int? selectedGovernorateId,
  }) = _Governoratesloaded;
  const factory GovernoratesState.loading() = _Loading;
  const factory GovernoratesState.success() = _Success;
  const factory GovernoratesState.failure({
    required String error,
  }) = _Error;
}

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/api_error_model.dart';
import '../../data/models/check_response_model.dart';
part 'main_production_state.freezed.dart';

@freezed
class MainProductionState with _$MainProductionState {
  const factory MainProductionState.initial() = _Initial;
  const factory MainProductionState.loading() = _LoadInProgress;
  const factory MainProductionState.logedIn() = _LogedIn;
  const factory MainProductionState.logedOut() = _LogedOut;
  const factory MainProductionState.notVerify({
    required SettingsResponseModel checkResponseModel,
  }) = _NotVerify;
  const factory MainProductionState.verified() = _Verified;
  const factory MainProductionState.error({
    required ApiErrorModel apiErrorModel,
  }) = _Error;
}

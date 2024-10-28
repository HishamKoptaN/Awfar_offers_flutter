import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/offers_response_model.dart';
part 'offers_state.freezed.dart';

@freezed
class OffersState with _$OffersState {
  const factory OffersState.initialState() = _InitialState;
  const factory OffersState.offersLoaded({
    required OffersResponseModel offersResponseModel,
  }) = _OffersLoaded;
  const factory OffersState.loading() = _Loading;
  const factory OffersState.failure({required String error}) = _Failure;
  const factory OffersState.success() = _Success;
}

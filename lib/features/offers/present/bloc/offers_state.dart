import 'package:freezed_annotation/freezed_annotation.dart';
part 'offers_state.freezed.dart';

@freezed
class OffersState with _$OffersState {
  const factory OffersState.initialState() = _InitialState;
  const factory OffersState.loaded() = _Loaded;
  const factory OffersState.loading() = _Loading;
  const factory OffersState.failure({
    required String error,
  }) = _Failure;
  const factory OffersState.success() = _Success;
}

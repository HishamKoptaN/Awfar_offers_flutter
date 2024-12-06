import 'package:freezed_annotation/freezed_annotation.dart';
part 'stores_state.freezed.dart';

@freezed
class StoresState with _$StoresState {
  const factory StoresState.initialState() = _InitialState;
  const factory StoresState.loaded() = _Loaded;
  const factory StoresState.loading() = _Loading;
  const factory StoresState.failure({
    required String error,
  }) = _Failure;
  const factory StoresState.success() = _Success;
}

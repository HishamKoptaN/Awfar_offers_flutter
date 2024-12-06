import 'package:freezed_annotation/freezed_annotation.dart';
part 'products_state.freezed.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.initial() = _Initial;
  const factory ProductsState.loaded() = _loaded;
  const factory ProductsState.loading() = _Loading;
  const factory ProductsState.success() = _Success;
  const factory ProductsState.failure({
    required String error,
  }) = _Error;
}

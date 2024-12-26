import 'package:freezed_annotation/freezed_annotation.dart';
part 'categories_state.freezed.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initial() = _Initial;
  const factory CategoriesState.loaded() = _loaded;
  const factory CategoriesState.loading() = _Loading;
  const factory CategoriesState.success() = _Success;
  const factory CategoriesState.failure({
    required String error,
  }) = _Error;
}

import 'package:freezed_annotation/freezed_annotation.dart';
part 'sub_categories_state.freezed.dart';

@freezed
class SubCategoriesItemsState with _$SubCategoriesItemsState {
  const factory SubCategoriesItemsState.initial() = _Initial;
  const factory SubCategoriesItemsState.loaded() = _loaded;
  const factory SubCategoriesItemsState.loading() = _Loading;
  const factory SubCategoriesItemsState.success() = _Success;
  const factory SubCategoriesItemsState.failure({
    required String error,
  }) = _Error;
}

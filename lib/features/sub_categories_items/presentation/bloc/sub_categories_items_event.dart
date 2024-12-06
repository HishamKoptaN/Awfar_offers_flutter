import 'package:freezed_annotation/freezed_annotation.dart';
part 'sub_categories_items_event.freezed.dart';

@freezed
class SubCategoriesItemsEvent with _$SubCategoriesItemsEvent {
  const factory SubCategoriesItemsEvent.getSubCategoriesItems({
    required int subCategoryId,
  }) = _GetSubCategoriesItems;
}

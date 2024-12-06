import 'package:freezed_annotation/freezed_annotation.dart';
part 'sub_categories_event.freezed.dart';

@freezed
class SubCategoriesEvent with _$SubCategoriesEvent {
  const factory SubCategoriesEvent.getSubCategoriesEvent() =
      _GetSubCategoriesEvent;
}

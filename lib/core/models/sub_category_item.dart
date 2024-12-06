// To parse this JSON data, do
//
//     final offersResponseModel = offersResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
part 'sub_category_item.freezed.dart';
part 'sub_category_item.g.dart';

@freezed
class SubCategoryItem with _$SubCategoryItem {
  const factory SubCategoryItem({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "category_id") int? categoryId,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "products_count") int? productsCunt,
  }) = _SubCategoryItem;

  factory SubCategoryItem.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryItemFromJson(json);
}

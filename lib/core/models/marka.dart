// To parse this JSON data, do
//
//     final offersResponseModel = offersResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
part 'marka.freezed.dart';
part 'marka.g.dart';

@freezed
class Marka with _$Marka {
  const factory Marka({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "category_id") int? categoryId,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "products_count") int? productsCunt,
  }) = _Marka;

  factory Marka.fromJson(Map<String, dynamic> json) => _$MarkaFromJson(json);
}

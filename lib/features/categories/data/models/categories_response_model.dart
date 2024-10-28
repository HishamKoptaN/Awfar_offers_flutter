// To parse this JSON data, do
//
//     final categoriesResponseModel = categoriesResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'categories_response_model.freezed.dart';
part 'categories_response_model.g.dart';

List<CategoriesResponseModel> categoriesResponseModelFromJson(String str) =>
    List<CategoriesResponseModel>.from(
        json.decode(str).map((x) => CategoriesResponseModel.fromJson(x)));

String categoriesResponseModelToJson(List<CategoriesResponseModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class CategoriesResponseModel with _$CategoriesResponseModel {
  const factory CategoriesResponseModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "offers") List<Offer>? offers,
  }) = _CategoriesResponseModel;

  factory CategoriesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseModelFromJson(json);
}

@freezed
class Offer with _$Offer {
  const factory Offer({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "category_id") int? categoryId,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "end_at") dynamic endAt,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _Offer;

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);
}

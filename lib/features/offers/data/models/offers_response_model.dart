// To parse this JSON data, do
//
//     final offersResponseModel = offersResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
part 'offers_response_model.freezed.dart';
part 'offers_response_model.g.dart';

OffersResponseModel offersResponseModelFromJson(String str) =>
    OffersResponseModel.fromJson(json.decode(str));

String offersResponseModelToJson(OffersResponseModel data) =>
    json.encode(data.toJson());

@freezed
class OffersResponseModel with _$OffersResponseModel {
  const factory OffersResponseModel({
    @JsonKey(name: "categories") List<Category>? categories,
    @JsonKey(name: "stores") List<StoreElement>? stores,
    @JsonKey(name: "offers") List<OffersResponseModelOffer>? offers,
  }) = _OffersResponseModel;

  factory OffersResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OffersResponseModelFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "offers_count") int? offersCount,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class OffersResponseModelOffer with _$OffersResponseModelOffer {
  const factory OffersResponseModelOffer({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "days_remaining") int? daysRemaining,
    @JsonKey(name: "sub_category") SubCategory? subCategory,
    @JsonKey(name: "store") OfferStore? store,
  }) = _OffersResponseModelOffer;

  factory OffersResponseModelOffer.fromJson(Map<String, dynamic> json) =>
      _$OffersResponseModelOfferFromJson(json);
}

@freezed
class OfferStore with _$OfferStore {
  const factory OfferStore({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "offers_count") int? offersCount,
  }) = _OfferStore;

  factory OfferStore.fromJson(Map<String, dynamic> json) =>
      _$OfferStoreFromJson(json);
}

@freezed
class SubCategory with _$SubCategory {
  const factory SubCategory({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "category_id") int? categoryId,
  }) = _SubCategory;

  factory SubCategory.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryFromJson(json);
}

@freezed
class StoreElement with _$StoreElement {
  const factory StoreElement({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "country_id") int? countryId,
    @JsonKey(name: "governorate_id") int? governorateId,
    @JsonKey(name: "place") String? place,
    @JsonKey(name: "offers_count") int? offersCount,
    @JsonKey(name: "offers") List<StoreOffer>? offers,
  }) = _StoreElement;

  factory StoreElement.fromJson(Map<String, dynamic> json) =>
      _$StoreElementFromJson(json);
}

@freezed
class StoreOffer with _$StoreOffer {
  const factory StoreOffer({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "days_remaining") int? daysRemaining,
  }) = _StoreOffer;

  factory StoreOffer.fromJson(Map<String, dynamic> json) =>
      _$StoreOfferFromJson(json);
}

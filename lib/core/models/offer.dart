// To parse this JSON data, do
//
//     final offersResponseModel = offersResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

import 'store.dart';
import 'sub_category.dart';
part 'offer.freezed.dart';
part 'offer.g.dart';

@freezed
class Offer with _$Offer {
  const factory Offer({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "days_remaining") int? daysRemaining,
    @JsonKey(name: "sub_category") SubCategory? subCategory,
    @JsonKey(name: "store") Store? store,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "sub_category_id") int? subCategoryId,
    @JsonKey(name: "end_at") DateTime? endAt,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _Offer;

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);
}

// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

import 'store.dart';
part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "price") String? price,
    @JsonKey(name: "discount_rate") String? discountRate,
    @JsonKey(name: "price_after_discount") String? priceAfterDiscount,
    @JsonKey(name: "amount_saved") String? amountSaved,
    @JsonKey(name: "offer_group_id") int? offerGroupId,
    @JsonKey(name: "sub_category_item_id") int? subCategoryItemId,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "offer_group") OfferGroup? offerGroup,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class OfferGroup with _$OfferGroup {
  const factory OfferGroup({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "start_at") dynamic startAt,
    @JsonKey(name: "end_at") DateTime? endAt,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "days_remaining") String? daysRemaining,
    @JsonKey(name: "store") Store? store,
  }) = _OfferGroup;

  factory OfferGroup.fromJson(Map<String, dynamic> json) =>
      _$OfferGroupFromJson(json);
}

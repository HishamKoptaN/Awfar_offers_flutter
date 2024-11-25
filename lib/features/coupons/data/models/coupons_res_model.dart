// To parse this JSON data, do
//
//     final coupon = couponFromJson(jsonString);
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
part 'coupons_res_model.freezed.dart';
part 'coupons_res_model.g.dart';

List<Coupon> couponFromJson(String str) =>
    List<Coupon>.from(json.decode(str).map((x) => Coupon.fromJson(x)));

String couponToJson(List<Coupon> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class Coupon with _$Coupon {
  const factory Coupon({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "code") String? code,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "category_id") int? categoryId,
    @JsonKey(name: "url") String? url,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "is_work") bool? isWork,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "store") Store? store,
  }) = _Coupon;

  factory Coupon.fromJson(Map<String, dynamic> json) => _$CouponFromJson(json);
}

@freezed
class Store with _$Store {
  const factory Store({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "governorate_id") int? governorateId,
    @JsonKey(name: "place") String? place,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "offers_count") int? offersCount,
  }) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}

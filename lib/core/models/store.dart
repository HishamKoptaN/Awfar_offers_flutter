// To parse this JSON data, do
//
//     final offersResponseModel = offersResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
part 'store.freezed.dart';
part 'store.g.dart';

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
    @JsonKey(name: "offer_groups") List<OfferGroup>? offerGroups,
  }) = _Store;
  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}

@freezed
class OfferGroup with _$OfferGroup {
  const factory OfferGroup({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "category_id") int? categoryId,
    @JsonKey(name: "start_at") dynamic startAt,
    @JsonKey(name: "end_at") dynamic endAt,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "days_remaining") String? daysRemaining,
    @JsonKey(name: "offers") List<Offer>? offers,
  }) = _OfferGroup;

  factory OfferGroup.fromJson(Map<String, dynamic> json) =>
      _$OfferGroupFromJson(json);
}

@freezed
class Offer with _$Offer {
  const factory Offer({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "offer_group_id") int? offerGroupId,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "days_remaining") int? daysRemaining,
  }) = _Offer;

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);
}

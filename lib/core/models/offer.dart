// To parse this JSON data, do
//
//     final offersResponseModel = offersResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

import 'offer_group.dart';
part 'offer.freezed.dart';
part 'offer.g.dart';

@freezed
class Offer with _$Offer {
  const factory Offer({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "offer_group_id") int? offerGroupId,
    @JsonKey(name: "status") bool? status,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "offer_group") OfferGroup? offerGroup,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _Offer;

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);
}

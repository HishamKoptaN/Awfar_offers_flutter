// To parse this JSON data, do
//
//     final offersResponseModel = offersResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

import 'offer_group.dart';
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

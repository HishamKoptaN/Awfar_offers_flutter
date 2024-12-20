import 'package:freezed_annotation/freezed_annotation.dart';

import 'offer.dart';
import 'store.dart';
part 'offer_group.freezed.dart';
part 'offer_group.g.dart';

@freezed
class OfferGroup with _$OfferGroup {
  const factory OfferGroup({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "status") bool? status,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "start_at") DateTime? startAt,
    @JsonKey(name: "end_at") DateTime? endAt,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "days_remaining") String? daysRemaining,
    @JsonKey(name: "offers") List<Offer>? offers,
    @JsonKey(name: "store") Store? store,
  }) = _OfferGroup;

  factory OfferGroup.fromJson(Map<String, dynamic> json) =>
      _$OfferGroupFromJson(json);
}

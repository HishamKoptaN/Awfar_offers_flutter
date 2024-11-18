// To parse this JSON data, do
//
//     final governorate = governorateFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
part 'governorates_res_model.freezed.dart';
part 'governorates_res_model.g.dart';

List<Governorate> governorateFromJson(String str) => List<Governorate>.from(
    json.decode(str).map((x) => Governorate.fromJson(x)));

String governorateToJson(List<Governorate> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class Governorate with _$Governorate {
  const factory Governorate({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "country_id") int? countryId,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _Governorate;

  factory Governorate.fromJson(Map<String, dynamic> json) =>
      _$GovernorateFromJson(json);
}

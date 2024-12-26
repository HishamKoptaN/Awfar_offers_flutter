// To parse this JSON data, do
//
//     final country = countryFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
part 'countries_res_model.freezed.dart';
part 'countries_res_model.g.dart';

List<Country> countryFromJson(String str) =>
    List<Country>.from(json.decode(str).map((x) => Country.fromJson(x)));

String countryToJson(List<Country> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class Country with _$Country {
  const factory Country({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "code") String? code,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}

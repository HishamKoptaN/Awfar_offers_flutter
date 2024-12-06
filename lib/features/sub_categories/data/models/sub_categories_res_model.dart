// To parse this JSON data, do
//
//     final categoriesResponseModel = categoriesResModelFromJson(jsonString);

import 'dart:convert';
import '../../../../core/models/sub_category.dart';

List<SubCategory> categoriesResModelFromJson(String str) =>
    List<SubCategory>.from(
        json.decode(str).map((x) => SubCategory.fromJson(x)));

String categoriesResModelToJson(List<SubCategory> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

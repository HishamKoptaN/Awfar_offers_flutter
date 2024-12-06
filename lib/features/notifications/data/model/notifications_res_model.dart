// To parse this JSON data, do
//
//     final notificationsResModel = notificationsResModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import '../../../../core/models/store.dart';
part 'notifications_res_model.freezed.dart';
part 'notifications_res_model.g.dart';

List<Notification> notificationFromJson(String str) => List<Notification>.from(
    json.decode(str).map((x) => Notification.fromJson(x)));

String notificationToJson(List<Notification> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class Notification with _$Notification {
  const factory Notification({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "type") dynamic type,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "read_at") dynamic readAt,
    @JsonKey(name: "store") Store? store,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}

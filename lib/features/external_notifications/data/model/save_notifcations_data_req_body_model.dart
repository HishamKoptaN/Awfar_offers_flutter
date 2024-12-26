import 'package:freezed_annotation/freezed_annotation.dart';
part 'save_notifcations_data_req_body_model.freezed.dart';
part 'save_notifcations_data_req_body_model.g.dart';

@freezed
class SaveNotifcationsDataReqBodyModel with _$SaveNotifcationsDataReqBodyModel {
  const factory SaveNotifcationsDataReqBodyModel({
    @JsonKey(name: "device_id") String? deviceId,
    @JsonKey(name: "city_id") int? cityId,
    @JsonKey(name: "fcm_token") String? fcmToken,
  }) = _SaveNotifcationsDataReqBodyModel;

  factory SaveNotifcationsDataReqBodyModel.fromJson(
          Map<String, dynamic> json) =>
      _$SaveNotifcationsDataReqBodyModelFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_notifcations_data_req_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveNotifcationsDataReqBodyModelImpl
    _$$SaveNotifcationsDataReqBodyModelImplFromJson(
            Map<String, dynamic> json) =>
        _$SaveNotifcationsDataReqBodyModelImpl(
          deviceId: json['device_id'] as String?,
          governorateId: (json['governorate_id'] as num?)?.toInt(),
          fcmToken: json['fcm_token'] as String?,
        );

Map<String, dynamic> _$$SaveNotifcationsDataReqBodyModelImplToJson(
        _$SaveNotifcationsDataReqBodyModelImpl instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'governorate_id': instance.governorateId,
      'fcm_token': instance.fcmToken,
    };

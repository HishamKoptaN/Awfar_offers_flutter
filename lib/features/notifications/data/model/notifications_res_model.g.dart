// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationImpl _$$NotificationImplFromJson(Map<String, dynamic> json) =>
    _$NotificationImpl(
      id: (json['id'] as num?)?.toInt(),
      type: json['type'],
      message: json['message'] as String?,
      image: json['image'] as String?,
      readAt: json['read_at'],
      store: json['store'] == null
          ? null
          : Store.fromJson(json['store'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NotificationImplToJson(_$NotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'message': instance.message,
      'image': instance.image,
      'read_at': instance.readAt,
      'store': instance.store,
    };

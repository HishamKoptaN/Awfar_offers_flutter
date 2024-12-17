// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_singleton.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      accountNumber: json['account_number'] as String? ?? "",
      onlineOffline: json['online_offline'] as String? ?? "",
      firstName: json['first_name'] as String? ?? "",
      lastName: json['last_name'] as String? ?? "",
      email: json['email'] as String? ?? "",
      image: json['image'] as String? ?? "",
      address: json['address'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      upgradedAt: json['upgraded_at'] as String? ?? "",
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'account_number': instance.accountNumber,
      'online_offline': instance.onlineOffline,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'image': instance.image,
      'address': instance.address,
      'phone': instance.phone,
      'upgraded_at': instance.upgradedAt,
    };

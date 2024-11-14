// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_singleton.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      accountNumber: json['account_number'] as String? ?? "",
      onlineOffline: json['online_offline'] as String? ?? "",
      name: json['name'] as String? ?? "",
      username: json['username'] as String? ?? "",
      email: json['email'] as String? ?? "",
      image: json['image'] as String? ?? "",
      address: json['address'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      balance: (json['balance'] as num?)?.toDouble() ?? 0.0,
      planId: (json['plan_id'] as num?)?.toInt() ?? 1,
      upgradedAt: json['upgraded_at'] as String? ?? "",
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'account_number': instance.accountNumber,
      'online_offline': instance.onlineOffline,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'image': instance.image,
      'address': instance.address,
      'phone': instance.phone,
      'balance': instance.balance,
      'plan_id': instance.planId,
      'upgraded_at': instance.upgradedAt,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreImpl _$$StoreImplFromJson(Map<String, dynamic> json) => _$StoreImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      governorateId: (json['governorate_id'] as num?)?.toInt(),
      place: json['place'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      offerGroups: (json['offer_groups'] as List<dynamic>?)
          ?.map((e) => OfferGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StoreImplToJson(_$StoreImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'governorate_id': instance.governorateId,
      'place': instance.place,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'offer_groups': instance.offerGroups,
    };

_$OfferGroupImpl _$$OfferGroupImplFromJson(Map<String, dynamic> json) =>
    _$OfferGroupImpl(
      id: (json['id'] as num?)?.toInt(),
      status: json['status'] as bool?,
      name: json['name'] as String?,
      storeId: (json['store_id'] as num?)?.toInt(),
      startAt: json['start_at'],
      endAt: json['end_at'] == null
          ? null
          : DateTime.parse(json['end_at'] as String),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      daysRemaining: json['days_remaining'] as String?,
      offers: (json['offers'] as List<dynamic>?)
          ?.map((e) => Offer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OfferGroupImplToJson(_$OfferGroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'name': instance.name,
      'store_id': instance.storeId,
      'start_at': instance.startAt,
      'end_at': instance.endAt?.toIso8601String(),
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'days_remaining': instance.daysRemaining,
      'offers': instance.offers,
    };

_$OfferImpl _$$OfferImplFromJson(Map<String, dynamic> json) => _$OfferImpl(
      id: (json['id'] as num?)?.toInt(),
      offerGroupId: (json['offer_group_id'] as num?)?.toInt(),
      status: json['status'] as bool?,
      image: json['image'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      daysRemaining: (json['days_remaining'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OfferImplToJson(_$OfferImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'offer_group_id': instance.offerGroupId,
      'status': instance.status,
      'image': instance.image,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'days_remaining': instance.daysRemaining,
    };

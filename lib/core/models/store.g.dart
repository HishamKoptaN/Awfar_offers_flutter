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

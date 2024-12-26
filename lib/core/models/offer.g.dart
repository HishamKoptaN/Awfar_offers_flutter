// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OfferImpl _$$OfferImplFromJson(Map<String, dynamic> json) => _$OfferImpl(
      id: (json['id'] as num?)?.toInt(),
      offerGroupId: (json['offer_group_id'] as num?)?.toInt(),
      status: json['status'] as bool?,
      image: json['image'] as String?,
      offerGroup: json['offer_group'] == null
          ? null
          : OfferGroup.fromJson(json['offer_group'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$OfferImplToJson(_$OfferImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'offer_group_id': instance.offerGroupId,
      'status': instance.status,
      'image': instance.image,
      'offer_group': instance.offerGroup,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OfferImpl _$$OfferImplFromJson(Map<String, dynamic> json) => _$OfferImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      daysRemaining: (json['days_remaining'] as num?)?.toInt(),
      subCategory: json['sub_category'] == null
          ? null
          : SubCategory.fromJson(json['sub_category'] as Map<String, dynamic>),
      store: json['store'] == null
          ? null
          : Store.fromJson(json['store'] as Map<String, dynamic>),
      status: json['status'] as String?,
      storeId: (json['store_id'] as num?)?.toInt(),
      subCategoryId: (json['sub_category_id'] as num?)?.toInt(),
      endAt: json['end_at'] == null
          ? null
          : DateTime.parse(json['end_at'] as String),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$OfferImplToJson(_$OfferImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'days_remaining': instance.daysRemaining,
      'sub_category': instance.subCategory,
      'store': instance.store,
      'status': instance.status,
      'store_id': instance.storeId,
      'sub_category_id': instance.subCategoryId,
      'end_at': instance.endAt?.toIso8601String(),
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

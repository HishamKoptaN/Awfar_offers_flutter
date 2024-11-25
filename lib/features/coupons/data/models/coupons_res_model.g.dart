// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupons_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CouponImpl _$$CouponImplFromJson(Map<String, dynamic> json) => _$CouponImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      storeId: (json['store_id'] as num?)?.toInt(),
      categoryId: (json['category_id'] as num?)?.toInt(),
      url: json['url'] as String?,
      description: json['description'] as String?,
      isWork: json['is_work'] as bool?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      store: json['store'] == null
          ? null
          : Store.fromJson(json['store'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CouponImplToJson(_$CouponImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'store_id': instance.storeId,
      'category_id': instance.categoryId,
      'url': instance.url,
      'description': instance.description,
      'is_work': instance.isWork,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'store': instance.store,
    };

_$StoreImpl _$$StoreImplFromJson(Map<String, dynamic> json) => _$StoreImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      governorateId: (json['governorate_id'] as num?)?.toInt(),
      place: json['place'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      offersCount: (json['offers_count'] as num?)?.toInt(),
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
      'offers_count': instance.offersCount,
    };

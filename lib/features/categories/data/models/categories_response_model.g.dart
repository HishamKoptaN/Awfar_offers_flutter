// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoriesResponseModelImpl _$$CategoriesResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoriesResponseModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      offers: (json['offers'] as List<dynamic>?)
          ?.map((e) => Offer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoriesResponseModelImplToJson(
        _$CategoriesResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'offers': instance.offers,
    };

_$OfferImpl _$$OfferImplFromJson(Map<String, dynamic> json) => _$OfferImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      status: json['status'] as String?,
      storeId: (json['store_id'] as num?)?.toInt(),
      categoryId: (json['category_id'] as num?)?.toInt(),
      description: json['description'] as String?,
      image: json['image'] as String?,
      endAt: json['end_at'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$OfferImplToJson(_$OfferImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'store_id': instance.storeId,
      'category_id': instance.categoryId,
      'description': instance.description,
      'image': instance.image,
      'end_at': instance.endAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

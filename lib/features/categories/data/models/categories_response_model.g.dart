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
      subCategories: (json['sub_categories'] as List<dynamic>?)
          ?.map((e) => SubCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoriesResponseModelImplToJson(
        _$CategoriesResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'sub_categories': instance.subCategories,
    };

_$SubCategoryImpl _$$SubCategoryImplFromJson(Map<String, dynamic> json) =>
    _$SubCategoryImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      categoryId: (json['category_id'] as num?)?.toInt(),
      createdAt: json['created_at'],
      updatedAt: json['updated_at'] as String?,
      offers: (json['offers'] as List<dynamic>?)
          ?.map((e) => Offer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubCategoryImplToJson(_$SubCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'category_id': instance.categoryId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'offers': instance.offers,
    };

_$OfferImpl _$$OfferImplFromJson(Map<String, dynamic> json) => _$OfferImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      status: json['status'] as String?,
      storeId: (json['store_id'] as num?)?.toInt(),
      subCategoryId: (json['sub_category_id'] as num?)?.toInt(),
      description: json['description'] as String?,
      image: json['image'] as String?,
      endAt: json['end_at'] == null
          ? null
          : DateTime.parse(json['end_at'] as String),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      daysRemaining: (json['days_remaining'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OfferImplToJson(_$OfferImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'store_id': instance.storeId,
      'sub_category_id': instance.subCategoryId,
      'description': instance.description,
      'image': instance.image,
      'end_at': instance.endAt?.toIso8601String(),
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'days_remaining': instance.daysRemaining,
    };

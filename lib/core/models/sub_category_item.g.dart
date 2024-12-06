// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_category_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubCategoryItemImpl _$$SubCategoryItemImplFromJson(
        Map<String, dynamic> json) =>
    _$SubCategoryItemImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      categoryId: (json['category_id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      productsCunt: (json['products_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SubCategoryItemImplToJson(
        _$SubCategoryItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'category_id': instance.categoryId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'products_count': instance.productsCunt,
    };

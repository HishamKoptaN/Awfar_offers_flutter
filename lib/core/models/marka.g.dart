// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marka.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarkaImpl _$$MarkaImplFromJson(Map<String, dynamic> json) => _$MarkaImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      categoryId: (json['category_id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      productsCunt: (json['products_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MarkaImplToJson(_$MarkaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'category_id': instance.categoryId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'products_count': instance.productsCunt,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
      price: json['price'] as String?,
      discountRate: json['discount_rate'] as String?,
      priceAfterDiscount: json['price_after_discount'] as String?,
      amountSaved: json['amount_saved'] as String?,
      offerGroupId: (json['offer_group_id'] as num?)?.toInt(),
      subCategoryItemId: (json['sub_category_item_id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      offerGroup: json['offer_group'] == null
          ? null
          : OfferGroup.fromJson(json['offer_group'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'price': instance.price,
      'discount_rate': instance.discountRate,
      'price_after_discount': instance.priceAfterDiscount,
      'amount_saved': instance.amountSaved,
      'offer_group_id': instance.offerGroupId,
      'sub_category_item_id': instance.subCategoryItemId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'offer_group': instance.offerGroup,
    };

_$OfferGroupImpl _$$OfferGroupImplFromJson(Map<String, dynamic> json) =>
    _$OfferGroupImpl(
      id: (json['id'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      name: json['name'] as String?,
      storeId: (json['store_id'] as num?)?.toInt(),
      image: json['image'] as String?,
      startAt: json['start_at'],
      endAt: json['end_at'] == null
          ? null
          : DateTime.parse(json['end_at'] as String),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      daysRemaining: json['days_remaining'] as String?,
      store: json['store'] == null
          ? null
          : Store.fromJson(json['store'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OfferGroupImplToJson(_$OfferGroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'name': instance.name,
      'store_id': instance.storeId,
      'image': instance.image,
      'start_at': instance.startAt,
      'end_at': instance.endAt?.toIso8601String(),
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'days_remaining': instance.daysRemaining,
      'store': instance.store,
    };

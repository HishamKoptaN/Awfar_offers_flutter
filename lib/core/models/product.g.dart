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
      offerId: (json['offer_id'] as num?)?.toInt(),
      markaId: (json['marka_id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      amountSaved: json['amount_saved'] as String?,
      priceAfterDiscount: json['price_after_discount'] as String?,
      offer: json['offer'] == null
          ? null
          : Offer.fromJson(json['offer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'price': instance.price,
      'discount_rate': instance.discountRate,
      'offer_id': instance.offerId,
      'marka_id': instance.markaId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'amount_saved': instance.amountSaved,
      'price_after_discount': instance.priceAfterDiscount,
      'offer': instance.offer,
    };

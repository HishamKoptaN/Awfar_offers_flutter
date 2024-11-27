// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offers_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OffersResponseModelImpl _$$OffersResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OffersResponseModelImpl(
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      stores: (json['stores'] as List<dynamic>?)
          ?.map((e) => StoreElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      offers: (json['offers'] as List<dynamic>?)
          ?.map((e) =>
              OffersResponseModelOffer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OffersResponseModelImplToJson(
        _$OffersResponseModelImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'stores': instance.stores,
      'offers': instance.offers,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      offersCount: (json['offers_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'offers_count': instance.offersCount,
    };

_$OffersResponseModelOfferImpl _$$OffersResponseModelOfferImplFromJson(
        Map<String, dynamic> json) =>
    _$OffersResponseModelOfferImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      daysRemaining: (json['days_remaining'] as num?)?.toInt(),
      subCategory: json['sub_category'] == null
          ? null
          : SubCategoryOffers.fromJson(
              json['sub_category'] as Map<String, dynamic>),
      store: json['store'] == null
          ? null
          : OfferStore.fromJson(json['store'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OffersResponseModelOfferImplToJson(
        _$OffersResponseModelOfferImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'days_remaining': instance.daysRemaining,
      'sub_category': instance.subCategory,
      'store': instance.store,
    };

_$OfferStoreImpl _$$OfferStoreImplFromJson(Map<String, dynamic> json) =>
    _$OfferStoreImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      offersCount: (json['offers_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OfferStoreImplToJson(_$OfferStoreImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'offers_count': instance.offersCount,
    };

_$SubCategoryOffersImpl _$$SubCategoryOffersImplFromJson(
        Map<String, dynamic> json) =>
    _$SubCategoryOffersImpl(
      id: (json['id'] as num?)?.toInt(),
      categoryId: (json['category_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SubCategoryOffersImplToJson(
        _$SubCategoryOffersImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_id': instance.categoryId,
    };

_$StoreElementImpl _$$StoreElementImplFromJson(Map<String, dynamic> json) =>
    _$StoreElementImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      countryId: (json['country_id'] as num?)?.toInt(),
      governorateId: (json['governorate_id'] as num?)?.toInt(),
      place: json['place'] as String?,
      offersCount: (json['offers_count'] as num?)?.toInt(),
      offers: (json['offers'] as List<dynamic>?)
          ?.map((e) => StoreOffer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StoreElementImplToJson(_$StoreElementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'country_id': instance.countryId,
      'governorate_id': instance.governorateId,
      'place': instance.place,
      'offers_count': instance.offersCount,
      'offers': instance.offers,
    };

_$StoreOfferImpl _$$StoreOfferImplFromJson(Map<String, dynamic> json) =>
    _$StoreOfferImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      daysRemaining: (json['days_remaining'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$StoreOfferImplToJson(_$StoreOfferImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'days_remaining': instance.daysRemaining,
    };

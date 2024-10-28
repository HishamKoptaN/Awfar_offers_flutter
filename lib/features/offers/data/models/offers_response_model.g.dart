// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offers_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OffersResponseModelImpl _$$OffersResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OffersResponseModelImpl(
      offers: (json['offers'] as List<dynamic>?)
              ?.map((e) => Offer.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      stores: (json['stores'] as List<dynamic>?)
              ?.map((e) => Store.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$OffersResponseModelImplToJson(
        _$OffersResponseModelImpl instance) =>
    <String, dynamic>{
      'offers': instance.offers,
      'stores': instance.stores,
      'categories': instance.categories,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$OfferImpl _$$OfferImplFromJson(Map<String, dynamic> json) => _$OfferImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      status: json['status'] as String? ?? '',
      storeId: (json['store_id'] as num?)?.toInt() ?? 0,
      categoryId: (json['category_id'] as num?)?.toInt() ?? 0,
      description: json['description'] as String? ?? '',
      image: json['image'] as String? ?? '',
      endAt: json['end_at'],
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
      store: json['store'] == null
          ? null
          : Store.fromJson(json['store'] as Map<String, dynamic>),
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
      'store': instance.store,
    };

_$StoreImpl _$$StoreImplFromJson(Map<String, dynamic> json) => _$StoreImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      image: json['image'] as String? ?? '',
      countryId: (json['country_id'] as num?)?.toInt() ?? 0,
      governorateId: (json['governorate_id'] as num?)?.toInt() ?? 0,
      place: json['place'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
    );

Map<String, dynamic> _$$StoreImplToJson(_$StoreImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'country_id': instance.countryId,
      'governorate_id': instance.governorateId,
      'place': instance.place,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

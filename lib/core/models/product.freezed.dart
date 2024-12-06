// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_rate")
  String? get discountRate => throw _privateConstructorUsedError;
  @JsonKey(name: "price_after_discount")
  String? get priceAfterDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_saved")
  String? get amountSaved => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_group_id")
  int? get offerGroupId => throw _privateConstructorUsedError;
  @JsonKey(name: "sub_category_item_id")
  int? get subCategoryItemId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_group")
  OfferGroup? get offerGroup => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "discount_rate") String? discountRate,
      @JsonKey(name: "price_after_discount") String? priceAfterDiscount,
      @JsonKey(name: "amount_saved") String? amountSaved,
      @JsonKey(name: "offer_group_id") int? offerGroupId,
      @JsonKey(name: "sub_category_item_id") int? subCategoryItemId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "offer_group") OfferGroup? offerGroup});

  $OfferGroupCopyWith<$Res>? get offerGroup;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? price = freezed,
    Object? discountRate = freezed,
    Object? priceAfterDiscount = freezed,
    Object? amountSaved = freezed,
    Object? offerGroupId = freezed,
    Object? subCategoryItemId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? offerGroup = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      discountRate: freezed == discountRate
          ? _value.discountRate
          : discountRate // ignore: cast_nullable_to_non_nullable
              as String?,
      priceAfterDiscount: freezed == priceAfterDiscount
          ? _value.priceAfterDiscount
          : priceAfterDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      amountSaved: freezed == amountSaved
          ? _value.amountSaved
          : amountSaved // ignore: cast_nullable_to_non_nullable
              as String?,
      offerGroupId: freezed == offerGroupId
          ? _value.offerGroupId
          : offerGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      subCategoryItemId: freezed == subCategoryItemId
          ? _value.subCategoryItemId
          : subCategoryItemId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      offerGroup: freezed == offerGroup
          ? _value.offerGroup
          : offerGroup // ignore: cast_nullable_to_non_nullable
              as OfferGroup?,
    ) as $Val);
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OfferGroupCopyWith<$Res>? get offerGroup {
    if (_value.offerGroup == null) {
      return null;
    }

    return $OfferGroupCopyWith<$Res>(_value.offerGroup!, (value) {
      return _then(_value.copyWith(offerGroup: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "discount_rate") String? discountRate,
      @JsonKey(name: "price_after_discount") String? priceAfterDiscount,
      @JsonKey(name: "amount_saved") String? amountSaved,
      @JsonKey(name: "offer_group_id") int? offerGroupId,
      @JsonKey(name: "sub_category_item_id") int? subCategoryItemId,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "offer_group") OfferGroup? offerGroup});

  @override
  $OfferGroupCopyWith<$Res>? get offerGroup;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? price = freezed,
    Object? discountRate = freezed,
    Object? priceAfterDiscount = freezed,
    Object? amountSaved = freezed,
    Object? offerGroupId = freezed,
    Object? subCategoryItemId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? offerGroup = freezed,
  }) {
    return _then(_$ProductImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      discountRate: freezed == discountRate
          ? _value.discountRate
          : discountRate // ignore: cast_nullable_to_non_nullable
              as String?,
      priceAfterDiscount: freezed == priceAfterDiscount
          ? _value.priceAfterDiscount
          : priceAfterDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      amountSaved: freezed == amountSaved
          ? _value.amountSaved
          : amountSaved // ignore: cast_nullable_to_non_nullable
              as String?,
      offerGroupId: freezed == offerGroupId
          ? _value.offerGroupId
          : offerGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      subCategoryItemId: freezed == subCategoryItemId
          ? _value.subCategoryItemId
          : subCategoryItemId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      offerGroup: freezed == offerGroup
          ? _value.offerGroup
          : offerGroup // ignore: cast_nullable_to_non_nullable
              as OfferGroup?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "price") this.price,
      @JsonKey(name: "discount_rate") this.discountRate,
      @JsonKey(name: "price_after_discount") this.priceAfterDiscount,
      @JsonKey(name: "amount_saved") this.amountSaved,
      @JsonKey(name: "offer_group_id") this.offerGroupId,
      @JsonKey(name: "sub_category_item_id") this.subCategoryItemId,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "offer_group") this.offerGroup});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "price")
  final String? price;
  @override
  @JsonKey(name: "discount_rate")
  final String? discountRate;
  @override
  @JsonKey(name: "price_after_discount")
  final String? priceAfterDiscount;
  @override
  @JsonKey(name: "amount_saved")
  final String? amountSaved;
  @override
  @JsonKey(name: "offer_group_id")
  final int? offerGroupId;
  @override
  @JsonKey(name: "sub_category_item_id")
  final int? subCategoryItemId;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "offer_group")
  final OfferGroup? offerGroup;

  @override
  String toString() {
    return 'Product(id: $id, image: $image, price: $price, discountRate: $discountRate, priceAfterDiscount: $priceAfterDiscount, amountSaved: $amountSaved, offerGroupId: $offerGroupId, subCategoryItemId: $subCategoryItemId, createdAt: $createdAt, updatedAt: $updatedAt, offerGroup: $offerGroup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountRate, discountRate) ||
                other.discountRate == discountRate) &&
            (identical(other.priceAfterDiscount, priceAfterDiscount) ||
                other.priceAfterDiscount == priceAfterDiscount) &&
            (identical(other.amountSaved, amountSaved) ||
                other.amountSaved == amountSaved) &&
            (identical(other.offerGroupId, offerGroupId) ||
                other.offerGroupId == offerGroupId) &&
            (identical(other.subCategoryItemId, subCategoryItemId) ||
                other.subCategoryItemId == subCategoryItemId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.offerGroup, offerGroup) ||
                other.offerGroup == offerGroup));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      image,
      price,
      discountRate,
      priceAfterDiscount,
      amountSaved,
      offerGroupId,
      subCategoryItemId,
      createdAt,
      updatedAt,
      offerGroup);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "image") final String? image,
      @JsonKey(name: "price") final String? price,
      @JsonKey(name: "discount_rate") final String? discountRate,
      @JsonKey(name: "price_after_discount") final String? priceAfterDiscount,
      @JsonKey(name: "amount_saved") final String? amountSaved,
      @JsonKey(name: "offer_group_id") final int? offerGroupId,
      @JsonKey(name: "sub_category_item_id") final int? subCategoryItemId,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "offer_group")
      final OfferGroup? offerGroup}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "price")
  String? get price;
  @override
  @JsonKey(name: "discount_rate")
  String? get discountRate;
  @override
  @JsonKey(name: "price_after_discount")
  String? get priceAfterDiscount;
  @override
  @JsonKey(name: "amount_saved")
  String? get amountSaved;
  @override
  @JsonKey(name: "offer_group_id")
  int? get offerGroupId;
  @override
  @JsonKey(name: "sub_category_item_id")
  int? get subCategoryItemId;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "offer_group")
  OfferGroup? get offerGroup;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OfferGroup _$OfferGroupFromJson(Map<String, dynamic> json) {
  return _OfferGroup.fromJson(json);
}

/// @nodoc
mixin _$OfferGroup {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "store_id")
  int? get storeId => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "start_at")
  dynamic get startAt => throw _privateConstructorUsedError;
  @JsonKey(name: "end_at")
  DateTime? get endAt => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "days_remaining")
  String? get daysRemaining => throw _privateConstructorUsedError;
  @JsonKey(name: "store")
  Store? get store => throw _privateConstructorUsedError;

  /// Serializes this OfferGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OfferGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OfferGroupCopyWith<OfferGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferGroupCopyWith<$Res> {
  factory $OfferGroupCopyWith(
          OfferGroup value, $Res Function(OfferGroup) then) =
      _$OfferGroupCopyWithImpl<$Res, OfferGroup>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "store_id") int? storeId,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "start_at") dynamic startAt,
      @JsonKey(name: "end_at") DateTime? endAt,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "days_remaining") String? daysRemaining,
      @JsonKey(name: "store") Store? store});

  $StoreCopyWith<$Res>? get store;
}

/// @nodoc
class _$OfferGroupCopyWithImpl<$Res, $Val extends OfferGroup>
    implements $OfferGroupCopyWith<$Res> {
  _$OfferGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OfferGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? name = freezed,
    Object? storeId = freezed,
    Object? image = freezed,
    Object? startAt = freezed,
    Object? endAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? daysRemaining = freezed,
    Object? store = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      daysRemaining: freezed == daysRemaining
          ? _value.daysRemaining
          : daysRemaining // ignore: cast_nullable_to_non_nullable
              as String?,
      store: freezed == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store?,
    ) as $Val);
  }

  /// Create a copy of OfferGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreCopyWith<$Res>? get store {
    if (_value.store == null) {
      return null;
    }

    return $StoreCopyWith<$Res>(_value.store!, (value) {
      return _then(_value.copyWith(store: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OfferGroupImplCopyWith<$Res>
    implements $OfferGroupCopyWith<$Res> {
  factory _$$OfferGroupImplCopyWith(
          _$OfferGroupImpl value, $Res Function(_$OfferGroupImpl) then) =
      __$$OfferGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "store_id") int? storeId,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "start_at") dynamic startAt,
      @JsonKey(name: "end_at") DateTime? endAt,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "days_remaining") String? daysRemaining,
      @JsonKey(name: "store") Store? store});

  @override
  $StoreCopyWith<$Res>? get store;
}

/// @nodoc
class __$$OfferGroupImplCopyWithImpl<$Res>
    extends _$OfferGroupCopyWithImpl<$Res, _$OfferGroupImpl>
    implements _$$OfferGroupImplCopyWith<$Res> {
  __$$OfferGroupImplCopyWithImpl(
      _$OfferGroupImpl _value, $Res Function(_$OfferGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of OfferGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? name = freezed,
    Object? storeId = freezed,
    Object? image = freezed,
    Object? startAt = freezed,
    Object? endAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? daysRemaining = freezed,
    Object? store = freezed,
  }) {
    return _then(_$OfferGroupImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      daysRemaining: freezed == daysRemaining
          ? _value.daysRemaining
          : daysRemaining // ignore: cast_nullable_to_non_nullable
              as String?,
      store: freezed == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfferGroupImpl implements _OfferGroup {
  const _$OfferGroupImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "store_id") this.storeId,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "start_at") this.startAt,
      @JsonKey(name: "end_at") this.endAt,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "days_remaining") this.daysRemaining,
      @JsonKey(name: "store") this.store});

  factory _$OfferGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferGroupImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "store_id")
  final int? storeId;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "start_at")
  final dynamic startAt;
  @override
  @JsonKey(name: "end_at")
  final DateTime? endAt;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "days_remaining")
  final String? daysRemaining;
  @override
  @JsonKey(name: "store")
  final Store? store;

  @override
  String toString() {
    return 'OfferGroup(id: $id, status: $status, name: $name, storeId: $storeId, image: $image, startAt: $startAt, endAt: $endAt, createdAt: $createdAt, updatedAt: $updatedAt, daysRemaining: $daysRemaining, store: $store)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other.startAt, startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.daysRemaining, daysRemaining) ||
                other.daysRemaining == daysRemaining) &&
            (identical(other.store, store) || other.store == store));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      status,
      name,
      storeId,
      image,
      const DeepCollectionEquality().hash(startAt),
      endAt,
      createdAt,
      updatedAt,
      daysRemaining,
      store);

  /// Create a copy of OfferGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferGroupImplCopyWith<_$OfferGroupImpl> get copyWith =>
      __$$OfferGroupImplCopyWithImpl<_$OfferGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfferGroupImplToJson(
      this,
    );
  }
}

abstract class _OfferGroup implements OfferGroup {
  const factory _OfferGroup(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "status") final int? status,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "store_id") final int? storeId,
      @JsonKey(name: "image") final String? image,
      @JsonKey(name: "start_at") final dynamic startAt,
      @JsonKey(name: "end_at") final DateTime? endAt,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "days_remaining") final String? daysRemaining,
      @JsonKey(name: "store") final Store? store}) = _$OfferGroupImpl;

  factory _OfferGroup.fromJson(Map<String, dynamic> json) =
      _$OfferGroupImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "store_id")
  int? get storeId;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "start_at")
  dynamic get startAt;
  @override
  @JsonKey(name: "end_at")
  DateTime? get endAt;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "days_remaining")
  String? get daysRemaining;
  @override
  @JsonKey(name: "store")
  Store? get store;

  /// Create a copy of OfferGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfferGroupImplCopyWith<_$OfferGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

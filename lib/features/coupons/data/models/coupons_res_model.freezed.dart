// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupons_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Coupon _$CouponFromJson(Map<String, dynamic> json) {
  return _Coupon.fromJson(json);
}

/// @nodoc
mixin _$Coupon {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "store_id")
  int? get storeId => throw _privateConstructorUsedError;
  @JsonKey(name: "category_id")
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "is_work")
  bool? get isWork => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "store")
  Store? get store => throw _privateConstructorUsedError;

  /// Serializes this Coupon to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Coupon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CouponCopyWith<Coupon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponCopyWith<$Res> {
  factory $CouponCopyWith(Coupon value, $Res Function(Coupon) then) =
      _$CouponCopyWithImpl<$Res, Coupon>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "code") String? code,
      @JsonKey(name: "store_id") int? storeId,
      @JsonKey(name: "category_id") int? categoryId,
      @JsonKey(name: "url") String? url,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "is_work") bool? isWork,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "store") Store? store});

  $StoreCopyWith<$Res>? get store;
}

/// @nodoc
class _$CouponCopyWithImpl<$Res, $Val extends Coupon>
    implements $CouponCopyWith<$Res> {
  _$CouponCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Coupon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? storeId = freezed,
    Object? categoryId = freezed,
    Object? url = freezed,
    Object? description = freezed,
    Object? isWork = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? store = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isWork: freezed == isWork
          ? _value.isWork
          : isWork // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      store: freezed == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store?,
    ) as $Val);
  }

  /// Create a copy of Coupon
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
abstract class _$$CouponImplCopyWith<$Res> implements $CouponCopyWith<$Res> {
  factory _$$CouponImplCopyWith(
          _$CouponImpl value, $Res Function(_$CouponImpl) then) =
      __$$CouponImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "code") String? code,
      @JsonKey(name: "store_id") int? storeId,
      @JsonKey(name: "category_id") int? categoryId,
      @JsonKey(name: "url") String? url,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "is_work") bool? isWork,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "store") Store? store});

  @override
  $StoreCopyWith<$Res>? get store;
}

/// @nodoc
class __$$CouponImplCopyWithImpl<$Res>
    extends _$CouponCopyWithImpl<$Res, _$CouponImpl>
    implements _$$CouponImplCopyWith<$Res> {
  __$$CouponImplCopyWithImpl(
      _$CouponImpl _value, $Res Function(_$CouponImpl) _then)
      : super(_value, _then);

  /// Create a copy of Coupon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? storeId = freezed,
    Object? categoryId = freezed,
    Object? url = freezed,
    Object? description = freezed,
    Object? isWork = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? store = freezed,
  }) {
    return _then(_$CouponImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isWork: freezed == isWork
          ? _value.isWork
          : isWork // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
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
class _$CouponImpl implements _Coupon {
  const _$CouponImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "code") this.code,
      @JsonKey(name: "store_id") this.storeId,
      @JsonKey(name: "category_id") this.categoryId,
      @JsonKey(name: "url") this.url,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "is_work") this.isWork,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "store") this.store});

  factory _$CouponImpl.fromJson(Map<String, dynamic> json) =>
      _$$CouponImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "code")
  final String? code;
  @override
  @JsonKey(name: "store_id")
  final int? storeId;
  @override
  @JsonKey(name: "category_id")
  final int? categoryId;
  @override
  @JsonKey(name: "url")
  final String? url;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "is_work")
  final bool? isWork;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "store")
  final Store? store;

  @override
  String toString() {
    return 'Coupon(id: $id, code: $code, storeId: $storeId, categoryId: $categoryId, url: $url, description: $description, isWork: $isWork, createdAt: $createdAt, updatedAt: $updatedAt, store: $store)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isWork, isWork) || other.isWork == isWork) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.store, store) || other.store == store));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, storeId, categoryId,
      url, description, isWork, createdAt, updatedAt, store);

  /// Create a copy of Coupon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponImplCopyWith<_$CouponImpl> get copyWith =>
      __$$CouponImplCopyWithImpl<_$CouponImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CouponImplToJson(
      this,
    );
  }
}

abstract class _Coupon implements Coupon {
  const factory _Coupon(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "code") final String? code,
      @JsonKey(name: "store_id") final int? storeId,
      @JsonKey(name: "category_id") final int? categoryId,
      @JsonKey(name: "url") final String? url,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "is_work") final bool? isWork,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "store") final Store? store}) = _$CouponImpl;

  factory _Coupon.fromJson(Map<String, dynamic> json) = _$CouponImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "code")
  String? get code;
  @override
  @JsonKey(name: "store_id")
  int? get storeId;
  @override
  @JsonKey(name: "category_id")
  int? get categoryId;
  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "is_work")
  bool? get isWork;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "store")
  Store? get store;

  /// Create a copy of Coupon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CouponImplCopyWith<_$CouponImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Store _$StoreFromJson(Map<String, dynamic> json) {
  return _Store.fromJson(json);
}

/// @nodoc
mixin _$Store {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "governorate_id")
  int? get governorateId => throw _privateConstructorUsedError;
  @JsonKey(name: "place")
  String? get place => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "offers_count")
  int? get offersCount => throw _privateConstructorUsedError;

  /// Serializes this Store to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreCopyWith<Store> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreCopyWith<$Res> {
  factory $StoreCopyWith(Store value, $Res Function(Store) then) =
      _$StoreCopyWithImpl<$Res, Store>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "governorate_id") int? governorateId,
      @JsonKey(name: "place") String? place,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "offers_count") int? offersCount});
}

/// @nodoc
class _$StoreCopyWithImpl<$Res, $Val extends Store>
    implements $StoreCopyWith<$Res> {
  _$StoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? governorateId = freezed,
    Object? place = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? offersCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      governorateId: freezed == governorateId
          ? _value.governorateId
          : governorateId // ignore: cast_nullable_to_non_nullable
              as int?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      offersCount: freezed == offersCount
          ? _value.offersCount
          : offersCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreImplCopyWith<$Res> implements $StoreCopyWith<$Res> {
  factory _$$StoreImplCopyWith(
          _$StoreImpl value, $Res Function(_$StoreImpl) then) =
      __$$StoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "governorate_id") int? governorateId,
      @JsonKey(name: "place") String? place,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "offers_count") int? offersCount});
}

/// @nodoc
class __$$StoreImplCopyWithImpl<$Res>
    extends _$StoreCopyWithImpl<$Res, _$StoreImpl>
    implements _$$StoreImplCopyWith<$Res> {
  __$$StoreImplCopyWithImpl(
      _$StoreImpl _value, $Res Function(_$StoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? governorateId = freezed,
    Object? place = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? offersCount = freezed,
  }) {
    return _then(_$StoreImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      governorateId: freezed == governorateId
          ? _value.governorateId
          : governorateId // ignore: cast_nullable_to_non_nullable
              as int?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      offersCount: freezed == offersCount
          ? _value.offersCount
          : offersCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreImpl implements _Store {
  const _$StoreImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "governorate_id") this.governorateId,
      @JsonKey(name: "place") this.place,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "offers_count") this.offersCount});

  factory _$StoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "governorate_id")
  final int? governorateId;
  @override
  @JsonKey(name: "place")
  final String? place;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "offers_count")
  final int? offersCount;

  @override
  String toString() {
    return 'Store(id: $id, name: $name, image: $image, governorateId: $governorateId, place: $place, createdAt: $createdAt, updatedAt: $updatedAt, offersCount: $offersCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.governorateId, governorateId) ||
                other.governorateId == governorateId) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.offersCount, offersCount) ||
                other.offersCount == offersCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, governorateId,
      place, createdAt, updatedAt, offersCount);

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreImplCopyWith<_$StoreImpl> get copyWith =>
      __$$StoreImplCopyWithImpl<_$StoreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreImplToJson(
      this,
    );
  }
}

abstract class _Store implements Store {
  const factory _Store(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "image") final String? image,
      @JsonKey(name: "governorate_id") final int? governorateId,
      @JsonKey(name: "place") final String? place,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "offers_count") final int? offersCount}) = _$StoreImpl;

  factory _Store.fromJson(Map<String, dynamic> json) = _$StoreImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "governorate_id")
  int? get governorateId;
  @override
  @JsonKey(name: "place")
  String? get place;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "offers_count")
  int? get offersCount;

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreImplCopyWith<_$StoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

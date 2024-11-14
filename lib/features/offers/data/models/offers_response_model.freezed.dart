// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offers_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OffersResponseModel _$OffersResponseModelFromJson(Map<String, dynamic> json) {
  return _OffersResponseModel.fromJson(json);
}

/// @nodoc
mixin _$OffersResponseModel {
  @JsonKey(name: "categories")
  List<Category>? get categories => throw _privateConstructorUsedError;
  @JsonKey(name: "stores")
  List<StoreElement>? get stores => throw _privateConstructorUsedError;
  @JsonKey(name: "offers")
  List<OffersResponseModelOffer>? get offers =>
      throw _privateConstructorUsedError;

  /// Serializes this OffersResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OffersResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OffersResponseModelCopyWith<OffersResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersResponseModelCopyWith<$Res> {
  factory $OffersResponseModelCopyWith(
          OffersResponseModel value, $Res Function(OffersResponseModel) then) =
      _$OffersResponseModelCopyWithImpl<$Res, OffersResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "categories") List<Category>? categories,
      @JsonKey(name: "stores") List<StoreElement>? stores,
      @JsonKey(name: "offers") List<OffersResponseModelOffer>? offers});
}

/// @nodoc
class _$OffersResponseModelCopyWithImpl<$Res, $Val extends OffersResponseModel>
    implements $OffersResponseModelCopyWith<$Res> {
  _$OffersResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OffersResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
    Object? stores = freezed,
    Object? offers = freezed,
  }) {
    return _then(_value.copyWith(
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      stores: freezed == stores
          ? _value.stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<StoreElement>?,
      offers: freezed == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<OffersResponseModelOffer>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OffersResponseModelImplCopyWith<$Res>
    implements $OffersResponseModelCopyWith<$Res> {
  factory _$$OffersResponseModelImplCopyWith(_$OffersResponseModelImpl value,
          $Res Function(_$OffersResponseModelImpl) then) =
      __$$OffersResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "categories") List<Category>? categories,
      @JsonKey(name: "stores") List<StoreElement>? stores,
      @JsonKey(name: "offers") List<OffersResponseModelOffer>? offers});
}

/// @nodoc
class __$$OffersResponseModelImplCopyWithImpl<$Res>
    extends _$OffersResponseModelCopyWithImpl<$Res, _$OffersResponseModelImpl>
    implements _$$OffersResponseModelImplCopyWith<$Res> {
  __$$OffersResponseModelImplCopyWithImpl(_$OffersResponseModelImpl _value,
      $Res Function(_$OffersResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OffersResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
    Object? stores = freezed,
    Object? offers = freezed,
  }) {
    return _then(_$OffersResponseModelImpl(
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      stores: freezed == stores
          ? _value._stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<StoreElement>?,
      offers: freezed == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<OffersResponseModelOffer>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OffersResponseModelImpl implements _OffersResponseModel {
  const _$OffersResponseModelImpl(
      {@JsonKey(name: "categories") final List<Category>? categories,
      @JsonKey(name: "stores") final List<StoreElement>? stores,
      @JsonKey(name: "offers") final List<OffersResponseModelOffer>? offers})
      : _categories = categories,
        _stores = stores,
        _offers = offers;

  factory _$OffersResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffersResponseModelImplFromJson(json);

  final List<Category>? _categories;
  @override
  @JsonKey(name: "categories")
  List<Category>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<StoreElement>? _stores;
  @override
  @JsonKey(name: "stores")
  List<StoreElement>? get stores {
    final value = _stores;
    if (value == null) return null;
    if (_stores is EqualUnmodifiableListView) return _stores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<OffersResponseModelOffer>? _offers;
  @override
  @JsonKey(name: "offers")
  List<OffersResponseModelOffer>? get offers {
    final value = _offers;
    if (value == null) return null;
    if (_offers is EqualUnmodifiableListView) return _offers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OffersResponseModel(categories: $categories, stores: $stores, offers: $offers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffersResponseModelImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._stores, _stores) &&
            const DeepCollectionEquality().equals(other._offers, _offers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_stores),
      const DeepCollectionEquality().hash(_offers));

  /// Create a copy of OffersResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OffersResponseModelImplCopyWith<_$OffersResponseModelImpl> get copyWith =>
      __$$OffersResponseModelImplCopyWithImpl<_$OffersResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OffersResponseModelImplToJson(
      this,
    );
  }
}

abstract class _OffersResponseModel implements OffersResponseModel {
  const factory _OffersResponseModel(
          {@JsonKey(name: "categories") final List<Category>? categories,
          @JsonKey(name: "stores") final List<StoreElement>? stores,
          @JsonKey(name: "offers")
          final List<OffersResponseModelOffer>? offers}) =
      _$OffersResponseModelImpl;

  factory _OffersResponseModel.fromJson(Map<String, dynamic> json) =
      _$OffersResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "categories")
  List<Category>? get categories;
  @override
  @JsonKey(name: "stores")
  List<StoreElement>? get stores;
  @override
  @JsonKey(name: "offers")
  List<OffersResponseModelOffer>? get offers;

  /// Create a copy of OffersResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OffersResponseModelImplCopyWith<_$OffersResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "offers_count")
  int? get offersCount => throw _privateConstructorUsedError;

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "offers_count") int? offersCount});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "offers_count") int? offersCount});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? offersCount = freezed,
  }) {
    return _then(_$CategoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$CategoryImpl implements _Category {
  const _$CategoryImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "offers_count") this.offersCount});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
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
    return 'Category(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, offersCount: $offersCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.offersCount, offersCount) ||
                other.offersCount == offersCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, createdAt, updatedAt, offersCount);

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "offers_count") final int? offersCount}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "offers_count")
  int? get offersCount;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OffersResponseModelOffer _$OffersResponseModelOfferFromJson(
    Map<String, dynamic> json) {
  return _OffersResponseModelOffer.fromJson(json);
}

/// @nodoc
mixin _$OffersResponseModelOffer {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "days_remaining")
  int? get daysRemaining => throw _privateConstructorUsedError;
  @JsonKey(name: "sub_category")
  SubCategory? get subCategory => throw _privateConstructorUsedError;
  @JsonKey(name: "store")
  OfferStore? get store => throw _privateConstructorUsedError;

  /// Serializes this OffersResponseModelOffer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OffersResponseModelOffer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OffersResponseModelOfferCopyWith<OffersResponseModelOffer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersResponseModelOfferCopyWith<$Res> {
  factory $OffersResponseModelOfferCopyWith(OffersResponseModelOffer value,
          $Res Function(OffersResponseModelOffer) then) =
      _$OffersResponseModelOfferCopyWithImpl<$Res, OffersResponseModelOffer>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "days_remaining") int? daysRemaining,
      @JsonKey(name: "sub_category") SubCategory? subCategory,
      @JsonKey(name: "store") OfferStore? store});

  $SubCategoryCopyWith<$Res>? get subCategory;
  $OfferStoreCopyWith<$Res>? get store;
}

/// @nodoc
class _$OffersResponseModelOfferCopyWithImpl<$Res,
        $Val extends OffersResponseModelOffer>
    implements $OffersResponseModelOfferCopyWith<$Res> {
  _$OffersResponseModelOfferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OffersResponseModelOffer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? daysRemaining = freezed,
    Object? subCategory = freezed,
    Object? store = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      daysRemaining: freezed == daysRemaining
          ? _value.daysRemaining
          : daysRemaining // ignore: cast_nullable_to_non_nullable
              as int?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as SubCategory?,
      store: freezed == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as OfferStore?,
    ) as $Val);
  }

  /// Create a copy of OffersResponseModelOffer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubCategoryCopyWith<$Res>? get subCategory {
    if (_value.subCategory == null) {
      return null;
    }

    return $SubCategoryCopyWith<$Res>(_value.subCategory!, (value) {
      return _then(_value.copyWith(subCategory: value) as $Val);
    });
  }

  /// Create a copy of OffersResponseModelOffer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OfferStoreCopyWith<$Res>? get store {
    if (_value.store == null) {
      return null;
    }

    return $OfferStoreCopyWith<$Res>(_value.store!, (value) {
      return _then(_value.copyWith(store: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OffersResponseModelOfferImplCopyWith<$Res>
    implements $OffersResponseModelOfferCopyWith<$Res> {
  factory _$$OffersResponseModelOfferImplCopyWith(
          _$OffersResponseModelOfferImpl value,
          $Res Function(_$OffersResponseModelOfferImpl) then) =
      __$$OffersResponseModelOfferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "days_remaining") int? daysRemaining,
      @JsonKey(name: "sub_category") SubCategory? subCategory,
      @JsonKey(name: "store") OfferStore? store});

  @override
  $SubCategoryCopyWith<$Res>? get subCategory;
  @override
  $OfferStoreCopyWith<$Res>? get store;
}

/// @nodoc
class __$$OffersResponseModelOfferImplCopyWithImpl<$Res>
    extends _$OffersResponseModelOfferCopyWithImpl<$Res,
        _$OffersResponseModelOfferImpl>
    implements _$$OffersResponseModelOfferImplCopyWith<$Res> {
  __$$OffersResponseModelOfferImplCopyWithImpl(
      _$OffersResponseModelOfferImpl _value,
      $Res Function(_$OffersResponseModelOfferImpl) _then)
      : super(_value, _then);

  /// Create a copy of OffersResponseModelOffer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? daysRemaining = freezed,
    Object? subCategory = freezed,
    Object? store = freezed,
  }) {
    return _then(_$OffersResponseModelOfferImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      daysRemaining: freezed == daysRemaining
          ? _value.daysRemaining
          : daysRemaining // ignore: cast_nullable_to_non_nullable
              as int?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as SubCategory?,
      store: freezed == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as OfferStore?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OffersResponseModelOfferImpl implements _OffersResponseModelOffer {
  const _$OffersResponseModelOfferImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "days_remaining") this.daysRemaining,
      @JsonKey(name: "sub_category") this.subCategory,
      @JsonKey(name: "store") this.store});

  factory _$OffersResponseModelOfferImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffersResponseModelOfferImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "days_remaining")
  final int? daysRemaining;
  @override
  @JsonKey(name: "sub_category")
  final SubCategory? subCategory;
  @override
  @JsonKey(name: "store")
  final OfferStore? store;

  @override
  String toString() {
    return 'OffersResponseModelOffer(id: $id, name: $name, description: $description, image: $image, daysRemaining: $daysRemaining, subCategory: $subCategory, store: $store)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffersResponseModelOfferImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.daysRemaining, daysRemaining) ||
                other.daysRemaining == daysRemaining) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory) &&
            (identical(other.store, store) || other.store == store));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, image,
      daysRemaining, subCategory, store);

  /// Create a copy of OffersResponseModelOffer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OffersResponseModelOfferImplCopyWith<_$OffersResponseModelOfferImpl>
      get copyWith => __$$OffersResponseModelOfferImplCopyWithImpl<
          _$OffersResponseModelOfferImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OffersResponseModelOfferImplToJson(
      this,
    );
  }
}

abstract class _OffersResponseModelOffer implements OffersResponseModelOffer {
  const factory _OffersResponseModelOffer(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "image") final String? image,
          @JsonKey(name: "days_remaining") final int? daysRemaining,
          @JsonKey(name: "sub_category") final SubCategory? subCategory,
          @JsonKey(name: "store") final OfferStore? store}) =
      _$OffersResponseModelOfferImpl;

  factory _OffersResponseModelOffer.fromJson(Map<String, dynamic> json) =
      _$OffersResponseModelOfferImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "days_remaining")
  int? get daysRemaining;
  @override
  @JsonKey(name: "sub_category")
  SubCategory? get subCategory;
  @override
  @JsonKey(name: "store")
  OfferStore? get store;

  /// Create a copy of OffersResponseModelOffer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OffersResponseModelOfferImplCopyWith<_$OffersResponseModelOfferImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OfferStore _$OfferStoreFromJson(Map<String, dynamic> json) {
  return _OfferStore.fromJson(json);
}

/// @nodoc
mixin _$OfferStore {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "offers_count")
  int? get offersCount => throw _privateConstructorUsedError;

  /// Serializes this OfferStore to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OfferStore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OfferStoreCopyWith<OfferStore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferStoreCopyWith<$Res> {
  factory $OfferStoreCopyWith(
          OfferStore value, $Res Function(OfferStore) then) =
      _$OfferStoreCopyWithImpl<$Res, OfferStore>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "offers_count") int? offersCount});
}

/// @nodoc
class _$OfferStoreCopyWithImpl<$Res, $Val extends OfferStore>
    implements $OfferStoreCopyWith<$Res> {
  _$OfferStoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OfferStore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
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
      offersCount: freezed == offersCount
          ? _value.offersCount
          : offersCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfferStoreImplCopyWith<$Res>
    implements $OfferStoreCopyWith<$Res> {
  factory _$$OfferStoreImplCopyWith(
          _$OfferStoreImpl value, $Res Function(_$OfferStoreImpl) then) =
      __$$OfferStoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "offers_count") int? offersCount});
}

/// @nodoc
class __$$OfferStoreImplCopyWithImpl<$Res>
    extends _$OfferStoreCopyWithImpl<$Res, _$OfferStoreImpl>
    implements _$$OfferStoreImplCopyWith<$Res> {
  __$$OfferStoreImplCopyWithImpl(
      _$OfferStoreImpl _value, $Res Function(_$OfferStoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of OfferStore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? offersCount = freezed,
  }) {
    return _then(_$OfferStoreImpl(
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
      offersCount: freezed == offersCount
          ? _value.offersCount
          : offersCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfferStoreImpl implements _OfferStore {
  const _$OfferStoreImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "offers_count") this.offersCount});

  factory _$OfferStoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferStoreImplFromJson(json);

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
  @JsonKey(name: "offers_count")
  final int? offersCount;

  @override
  String toString() {
    return 'OfferStore(id: $id, name: $name, image: $image, offersCount: $offersCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferStoreImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.offersCount, offersCount) ||
                other.offersCount == offersCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, offersCount);

  /// Create a copy of OfferStore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferStoreImplCopyWith<_$OfferStoreImpl> get copyWith =>
      __$$OfferStoreImplCopyWithImpl<_$OfferStoreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfferStoreImplToJson(
      this,
    );
  }
}

abstract class _OfferStore implements OfferStore {
  const factory _OfferStore(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "image") final String? image,
          @JsonKey(name: "offers_count") final int? offersCount}) =
      _$OfferStoreImpl;

  factory _OfferStore.fromJson(Map<String, dynamic> json) =
      _$OfferStoreImpl.fromJson;

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
  @JsonKey(name: "offers_count")
  int? get offersCount;

  /// Create a copy of OfferStore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfferStoreImplCopyWith<_$OfferStoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubCategory _$SubCategoryFromJson(Map<String, dynamic> json) {
  return _SubCategory.fromJson(json);
}

/// @nodoc
mixin _$SubCategory {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "category_id")
  int? get categoryId => throw _privateConstructorUsedError;

  /// Serializes this SubCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubCategoryCopyWith<SubCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoryCopyWith<$Res> {
  factory $SubCategoryCopyWith(
          SubCategory value, $Res Function(SubCategory) then) =
      _$SubCategoryCopyWithImpl<$Res, SubCategory>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "category_id") int? categoryId});
}

/// @nodoc
class _$SubCategoryCopyWithImpl<$Res, $Val extends SubCategory>
    implements $SubCategoryCopyWith<$Res> {
  _$SubCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubCategoryImplCopyWith<$Res>
    implements $SubCategoryCopyWith<$Res> {
  factory _$$SubCategoryImplCopyWith(
          _$SubCategoryImpl value, $Res Function(_$SubCategoryImpl) then) =
      __$$SubCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "category_id") int? categoryId});
}

/// @nodoc
class __$$SubCategoryImplCopyWithImpl<$Res>
    extends _$SubCategoryCopyWithImpl<$Res, _$SubCategoryImpl>
    implements _$$SubCategoryImplCopyWith<$Res> {
  __$$SubCategoryImplCopyWithImpl(
      _$SubCategoryImpl _value, $Res Function(_$SubCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryId = freezed,
  }) {
    return _then(_$SubCategoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubCategoryImpl implements _SubCategory {
  const _$SubCategoryImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "category_id") this.categoryId});

  factory _$SubCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubCategoryImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "category_id")
  final int? categoryId;

  @override
  String toString() {
    return 'SubCategory(id: $id, categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, categoryId);

  /// Create a copy of SubCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubCategoryImplCopyWith<_$SubCategoryImpl> get copyWith =>
      __$$SubCategoryImplCopyWithImpl<_$SubCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubCategoryImplToJson(
      this,
    );
  }
}

abstract class _SubCategory implements SubCategory {
  const factory _SubCategory(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "category_id") final int? categoryId}) = _$SubCategoryImpl;

  factory _SubCategory.fromJson(Map<String, dynamic> json) =
      _$SubCategoryImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "category_id")
  int? get categoryId;

  /// Create a copy of SubCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubCategoryImplCopyWith<_$SubCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreElement _$StoreElementFromJson(Map<String, dynamic> json) {
  return _StoreElement.fromJson(json);
}

/// @nodoc
mixin _$StoreElement {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "country_id")
  int? get countryId => throw _privateConstructorUsedError;
  @JsonKey(name: "governorate_id")
  int? get governorateId => throw _privateConstructorUsedError;
  @JsonKey(name: "place")
  String? get place => throw _privateConstructorUsedError;
  @JsonKey(name: "offers_count")
  int? get offersCount => throw _privateConstructorUsedError;
  @JsonKey(name: "offers")
  List<StoreOffer>? get offers => throw _privateConstructorUsedError;

  /// Serializes this StoreElement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreElementCopyWith<StoreElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreElementCopyWith<$Res> {
  factory $StoreElementCopyWith(
          StoreElement value, $Res Function(StoreElement) then) =
      _$StoreElementCopyWithImpl<$Res, StoreElement>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "country_id") int? countryId,
      @JsonKey(name: "governorate_id") int? governorateId,
      @JsonKey(name: "place") String? place,
      @JsonKey(name: "offers_count") int? offersCount,
      @JsonKey(name: "offers") List<StoreOffer>? offers});
}

/// @nodoc
class _$StoreElementCopyWithImpl<$Res, $Val extends StoreElement>
    implements $StoreElementCopyWith<$Res> {
  _$StoreElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? countryId = freezed,
    Object? governorateId = freezed,
    Object? place = freezed,
    Object? offersCount = freezed,
    Object? offers = freezed,
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
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int?,
      governorateId: freezed == governorateId
          ? _value.governorateId
          : governorateId // ignore: cast_nullable_to_non_nullable
              as int?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      offersCount: freezed == offersCount
          ? _value.offersCount
          : offersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      offers: freezed == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<StoreOffer>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreElementImplCopyWith<$Res>
    implements $StoreElementCopyWith<$Res> {
  factory _$$StoreElementImplCopyWith(
          _$StoreElementImpl value, $Res Function(_$StoreElementImpl) then) =
      __$$StoreElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "country_id") int? countryId,
      @JsonKey(name: "governorate_id") int? governorateId,
      @JsonKey(name: "place") String? place,
      @JsonKey(name: "offers_count") int? offersCount,
      @JsonKey(name: "offers") List<StoreOffer>? offers});
}

/// @nodoc
class __$$StoreElementImplCopyWithImpl<$Res>
    extends _$StoreElementCopyWithImpl<$Res, _$StoreElementImpl>
    implements _$$StoreElementImplCopyWith<$Res> {
  __$$StoreElementImplCopyWithImpl(
      _$StoreElementImpl _value, $Res Function(_$StoreElementImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? countryId = freezed,
    Object? governorateId = freezed,
    Object? place = freezed,
    Object? offersCount = freezed,
    Object? offers = freezed,
  }) {
    return _then(_$StoreElementImpl(
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
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int?,
      governorateId: freezed == governorateId
          ? _value.governorateId
          : governorateId // ignore: cast_nullable_to_non_nullable
              as int?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      offersCount: freezed == offersCount
          ? _value.offersCount
          : offersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      offers: freezed == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<StoreOffer>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreElementImpl implements _StoreElement {
  const _$StoreElementImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "country_id") this.countryId,
      @JsonKey(name: "governorate_id") this.governorateId,
      @JsonKey(name: "place") this.place,
      @JsonKey(name: "offers_count") this.offersCount,
      @JsonKey(name: "offers") final List<StoreOffer>? offers})
      : _offers = offers;

  factory _$StoreElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreElementImplFromJson(json);

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
  @JsonKey(name: "country_id")
  final int? countryId;
  @override
  @JsonKey(name: "governorate_id")
  final int? governorateId;
  @override
  @JsonKey(name: "place")
  final String? place;
  @override
  @JsonKey(name: "offers_count")
  final int? offersCount;
  final List<StoreOffer>? _offers;
  @override
  @JsonKey(name: "offers")
  List<StoreOffer>? get offers {
    final value = _offers;
    if (value == null) return null;
    if (_offers is EqualUnmodifiableListView) return _offers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StoreElement(id: $id, name: $name, image: $image, countryId: $countryId, governorateId: $governorateId, place: $place, offersCount: $offersCount, offers: $offers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreElementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.governorateId, governorateId) ||
                other.governorateId == governorateId) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.offersCount, offersCount) ||
                other.offersCount == offersCount) &&
            const DeepCollectionEquality().equals(other._offers, _offers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      image,
      countryId,
      governorateId,
      place,
      offersCount,
      const DeepCollectionEquality().hash(_offers));

  /// Create a copy of StoreElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreElementImplCopyWith<_$StoreElementImpl> get copyWith =>
      __$$StoreElementImplCopyWithImpl<_$StoreElementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreElementImplToJson(
      this,
    );
  }
}

abstract class _StoreElement implements StoreElement {
  const factory _StoreElement(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "image") final String? image,
          @JsonKey(name: "country_id") final int? countryId,
          @JsonKey(name: "governorate_id") final int? governorateId,
          @JsonKey(name: "place") final String? place,
          @JsonKey(name: "offers_count") final int? offersCount,
          @JsonKey(name: "offers") final List<StoreOffer>? offers}) =
      _$StoreElementImpl;

  factory _StoreElement.fromJson(Map<String, dynamic> json) =
      _$StoreElementImpl.fromJson;

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
  @JsonKey(name: "country_id")
  int? get countryId;
  @override
  @JsonKey(name: "governorate_id")
  int? get governorateId;
  @override
  @JsonKey(name: "place")
  String? get place;
  @override
  @JsonKey(name: "offers_count")
  int? get offersCount;
  @override
  @JsonKey(name: "offers")
  List<StoreOffer>? get offers;

  /// Create a copy of StoreElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreElementImplCopyWith<_$StoreElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreOffer _$StoreOfferFromJson(Map<String, dynamic> json) {
  return _StoreOffer.fromJson(json);
}

/// @nodoc
mixin _$StoreOffer {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "days_remaining")
  int? get daysRemaining => throw _privateConstructorUsedError;

  /// Serializes this StoreOffer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreOffer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreOfferCopyWith<StoreOffer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreOfferCopyWith<$Res> {
  factory $StoreOfferCopyWith(
          StoreOffer value, $Res Function(StoreOffer) then) =
      _$StoreOfferCopyWithImpl<$Res, StoreOffer>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "days_remaining") int? daysRemaining});
}

/// @nodoc
class _$StoreOfferCopyWithImpl<$Res, $Val extends StoreOffer>
    implements $StoreOfferCopyWith<$Res> {
  _$StoreOfferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreOffer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? daysRemaining = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      daysRemaining: freezed == daysRemaining
          ? _value.daysRemaining
          : daysRemaining // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreOfferImplCopyWith<$Res>
    implements $StoreOfferCopyWith<$Res> {
  factory _$$StoreOfferImplCopyWith(
          _$StoreOfferImpl value, $Res Function(_$StoreOfferImpl) then) =
      __$$StoreOfferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "days_remaining") int? daysRemaining});
}

/// @nodoc
class __$$StoreOfferImplCopyWithImpl<$Res>
    extends _$StoreOfferCopyWithImpl<$Res, _$StoreOfferImpl>
    implements _$$StoreOfferImplCopyWith<$Res> {
  __$$StoreOfferImplCopyWithImpl(
      _$StoreOfferImpl _value, $Res Function(_$StoreOfferImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreOffer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? daysRemaining = freezed,
  }) {
    return _then(_$StoreOfferImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      daysRemaining: freezed == daysRemaining
          ? _value.daysRemaining
          : daysRemaining // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreOfferImpl implements _StoreOffer {
  const _$StoreOfferImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "days_remaining") this.daysRemaining});

  factory _$StoreOfferImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreOfferImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "days_remaining")
  final int? daysRemaining;

  @override
  String toString() {
    return 'StoreOffer(id: $id, name: $name, description: $description, image: $image, daysRemaining: $daysRemaining)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreOfferImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.daysRemaining, daysRemaining) ||
                other.daysRemaining == daysRemaining));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, image, daysRemaining);

  /// Create a copy of StoreOffer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreOfferImplCopyWith<_$StoreOfferImpl> get copyWith =>
      __$$StoreOfferImplCopyWithImpl<_$StoreOfferImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreOfferImplToJson(
      this,
    );
  }
}

abstract class _StoreOffer implements StoreOffer {
  const factory _StoreOffer(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "image") final String? image,
          @JsonKey(name: "days_remaining") final int? daysRemaining}) =
      _$StoreOfferImpl;

  factory _StoreOffer.fromJson(Map<String, dynamic> json) =
      _$StoreOfferImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "days_remaining")
  int? get daysRemaining;

  /// Create a copy of StoreOffer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreOfferImplCopyWith<_$StoreOfferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

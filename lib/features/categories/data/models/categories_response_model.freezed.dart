// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoriesResponseModel _$CategoriesResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CategoriesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CategoriesResponseModel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "sub_categories")
  List<SubCategory>? get subCategories => throw _privateConstructorUsedError;

  /// Serializes this CategoriesResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoriesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesResponseModelCopyWith<CategoriesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesResponseModelCopyWith<$Res> {
  factory $CategoriesResponseModelCopyWith(CategoriesResponseModel value,
          $Res Function(CategoriesResponseModel) then) =
      _$CategoriesResponseModelCopyWithImpl<$Res, CategoriesResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "sub_categories") List<SubCategory>? subCategories});
}

/// @nodoc
class _$CategoriesResponseModelCopyWithImpl<$Res,
        $Val extends CategoriesResponseModel>
    implements $CategoriesResponseModelCopyWith<$Res> {
  _$CategoriesResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? subCategories = freezed,
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
      subCategories: freezed == subCategories
          ? _value.subCategories
          : subCategories // ignore: cast_nullable_to_non_nullable
              as List<SubCategory>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesResponseModelImplCopyWith<$Res>
    implements $CategoriesResponseModelCopyWith<$Res> {
  factory _$$CategoriesResponseModelImplCopyWith(
          _$CategoriesResponseModelImpl value,
          $Res Function(_$CategoriesResponseModelImpl) then) =
      __$$CategoriesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "sub_categories") List<SubCategory>? subCategories});
}

/// @nodoc
class __$$CategoriesResponseModelImplCopyWithImpl<$Res>
    extends _$CategoriesResponseModelCopyWithImpl<$Res,
        _$CategoriesResponseModelImpl>
    implements _$$CategoriesResponseModelImplCopyWith<$Res> {
  __$$CategoriesResponseModelImplCopyWithImpl(
      _$CategoriesResponseModelImpl _value,
      $Res Function(_$CategoriesResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? subCategories = freezed,
  }) {
    return _then(_$CategoriesResponseModelImpl(
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
      subCategories: freezed == subCategories
          ? _value._subCategories
          : subCategories // ignore: cast_nullable_to_non_nullable
              as List<SubCategory>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoriesResponseModelImpl implements _CategoriesResponseModel {
  const _$CategoriesResponseModelImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "sub_categories") final List<SubCategory>? subCategories})
      : _subCategories = subCategories;

  factory _$CategoriesResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoriesResponseModelImplFromJson(json);

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
  final List<SubCategory>? _subCategories;
  @override
  @JsonKey(name: "sub_categories")
  List<SubCategory>? get subCategories {
    final value = _subCategories;
    if (value == null) return null;
    if (_subCategories is EqualUnmodifiableListView) return _subCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CategoriesResponseModel(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, subCategories: $subCategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._subCategories, _subCategories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, createdAt, updatedAt,
      const DeepCollectionEquality().hash(_subCategories));

  /// Create a copy of CategoriesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesResponseModelImplCopyWith<_$CategoriesResponseModelImpl>
      get copyWith => __$$CategoriesResponseModelImplCopyWithImpl<
          _$CategoriesResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CategoriesResponseModel implements CategoriesResponseModel {
  const factory _CategoriesResponseModel(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "sub_categories")
      final List<SubCategory>? subCategories}) = _$CategoriesResponseModelImpl;

  factory _CategoriesResponseModel.fromJson(Map<String, dynamic> json) =
      _$CategoriesResponseModelImpl.fromJson;

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
  @JsonKey(name: "sub_categories")
  List<SubCategory>? get subCategories;

  /// Create a copy of CategoriesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesResponseModelImplCopyWith<_$CategoriesResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubCategory _$SubCategoryFromJson(Map<String, dynamic> json) {
  return _SubCategory.fromJson(json);
}

/// @nodoc
mixin _$SubCategory {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "category_id")
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  dynamic get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "offers")
  List<Offer>? get offers => throw _privateConstructorUsedError;

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
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "category_id") int? categoryId,
      @JsonKey(name: "created_at") dynamic createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "offers") List<Offer>? offers});
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
    Object? name = freezed,
    Object? image = freezed,
    Object? categoryId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      offers: freezed == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>?,
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
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "category_id") int? categoryId,
      @JsonKey(name: "created_at") dynamic createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "offers") List<Offer>? offers});
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
    Object? name = freezed,
    Object? image = freezed,
    Object? categoryId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? offers = freezed,
  }) {
    return _then(_$SubCategoryImpl(
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
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      offers: freezed == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubCategoryImpl implements _SubCategory {
  const _$SubCategoryImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "category_id") this.categoryId,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "offers") final List<Offer>? offers})
      : _offers = offers;

  factory _$SubCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubCategoryImplFromJson(json);

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
  @JsonKey(name: "category_id")
  final int? categoryId;
  @override
  @JsonKey(name: "created_at")
  final dynamic createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  final List<Offer>? _offers;
  @override
  @JsonKey(name: "offers")
  List<Offer>? get offers {
    final value = _offers;
    if (value == null) return null;
    if (_offers is EqualUnmodifiableListView) return _offers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SubCategory(id: $id, name: $name, image: $image, categoryId: $categoryId, createdAt: $createdAt, updatedAt: $updatedAt, offers: $offers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._offers, _offers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      image,
      categoryId,
      const DeepCollectionEquality().hash(createdAt),
      updatedAt,
      const DeepCollectionEquality().hash(_offers));

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
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "image") final String? image,
      @JsonKey(name: "category_id") final int? categoryId,
      @JsonKey(name: "created_at") final dynamic createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "offers") final List<Offer>? offers}) = _$SubCategoryImpl;

  factory _SubCategory.fromJson(Map<String, dynamic> json) =
      _$SubCategoryImpl.fromJson;

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
  @JsonKey(name: "category_id")
  int? get categoryId;
  @override
  @JsonKey(name: "created_at")
  dynamic get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "offers")
  List<Offer>? get offers;

  /// Create a copy of SubCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubCategoryImplCopyWith<_$SubCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Offer _$OfferFromJson(Map<String, dynamic> json) {
  return _Offer.fromJson(json);
}

/// @nodoc
mixin _$Offer {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "store_id")
  int? get storeId => throw _privateConstructorUsedError;
  @JsonKey(name: "sub_category_id")
  int? get subCategoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "end_at")
  DateTime? get endAt => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "days_remaining")
  int? get daysRemaining => throw _privateConstructorUsedError;

  /// Serializes this Offer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Offer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OfferCopyWith<Offer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferCopyWith<$Res> {
  factory $OfferCopyWith(Offer value, $Res Function(Offer) then) =
      _$OfferCopyWithImpl<$Res, Offer>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "store_id") int? storeId,
      @JsonKey(name: "sub_category_id") int? subCategoryId,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "end_at") DateTime? endAt,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "days_remaining") int? daysRemaining});
}

/// @nodoc
class _$OfferCopyWithImpl<$Res, $Val extends Offer>
    implements $OfferCopyWith<$Res> {
  _$OfferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Offer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? storeId = freezed,
    Object? subCategoryId = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? endAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as int?,
      subCategoryId: freezed == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfferImplCopyWith<$Res> implements $OfferCopyWith<$Res> {
  factory _$$OfferImplCopyWith(
          _$OfferImpl value, $Res Function(_$OfferImpl) then) =
      __$$OfferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "store_id") int? storeId,
      @JsonKey(name: "sub_category_id") int? subCategoryId,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "end_at") DateTime? endAt,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "days_remaining") int? daysRemaining});
}

/// @nodoc
class __$$OfferImplCopyWithImpl<$Res>
    extends _$OfferCopyWithImpl<$Res, _$OfferImpl>
    implements _$$OfferImplCopyWith<$Res> {
  __$$OfferImplCopyWithImpl(
      _$OfferImpl _value, $Res Function(_$OfferImpl) _then)
      : super(_value, _then);

  /// Create a copy of Offer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? storeId = freezed,
    Object? subCategoryId = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? endAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? daysRemaining = freezed,
  }) {
    return _then(_$OfferImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as int?,
      subCategoryId: freezed == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfferImpl implements _Offer {
  const _$OfferImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "store_id") this.storeId,
      @JsonKey(name: "sub_category_id") this.subCategoryId,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "end_at") this.endAt,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "days_remaining") this.daysRemaining});

  factory _$OfferImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "store_id")
  final int? storeId;
  @override
  @JsonKey(name: "sub_category_id")
  final int? subCategoryId;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "image")
  final String? image;
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
  final int? daysRemaining;

  @override
  String toString() {
    return 'Offer(id: $id, name: $name, status: $status, storeId: $storeId, subCategoryId: $subCategoryId, description: $description, image: $image, endAt: $endAt, createdAt: $createdAt, updatedAt: $updatedAt, daysRemaining: $daysRemaining)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.subCategoryId, subCategoryId) ||
                other.subCategoryId == subCategoryId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.daysRemaining, daysRemaining) ||
                other.daysRemaining == daysRemaining));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      status,
      storeId,
      subCategoryId,
      description,
      image,
      endAt,
      createdAt,
      updatedAt,
      daysRemaining);

  /// Create a copy of Offer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferImplCopyWith<_$OfferImpl> get copyWith =>
      __$$OfferImplCopyWithImpl<_$OfferImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfferImplToJson(
      this,
    );
  }
}

abstract class _Offer implements Offer {
  const factory _Offer(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "store_id") final int? storeId,
      @JsonKey(name: "sub_category_id") final int? subCategoryId,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "image") final String? image,
      @JsonKey(name: "end_at") final DateTime? endAt,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "days_remaining") final int? daysRemaining}) = _$OfferImpl;

  factory _Offer.fromJson(Map<String, dynamic> json) = _$OfferImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "store_id")
  int? get storeId;
  @override
  @JsonKey(name: "sub_category_id")
  int? get subCategoryId;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "image")
  String? get image;
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
  int? get daysRemaining;

  /// Create a copy of Offer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfferImplCopyWith<_$OfferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

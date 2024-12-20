// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Offer _$OfferFromJson(Map<String, dynamic> json) {
  return _Offer.fromJson(json);
}

/// @nodoc
mixin _$Offer {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_group_id")
  int? get offerGroupId => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_group")
  OfferGroup? get offerGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

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
      @JsonKey(name: "offer_group_id") int? offerGroupId,
      @JsonKey(name: "status") bool? status,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "offer_group") OfferGroup? offerGroup,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});

  $OfferGroupCopyWith<$Res>? get offerGroup;
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
    Object? offerGroupId = freezed,
    Object? status = freezed,
    Object? image = freezed,
    Object? offerGroup = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      offerGroupId: freezed == offerGroupId
          ? _value.offerGroupId
          : offerGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      offerGroup: freezed == offerGroup
          ? _value.offerGroup
          : offerGroup // ignore: cast_nullable_to_non_nullable
              as OfferGroup?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Offer
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
abstract class _$$OfferImplCopyWith<$Res> implements $OfferCopyWith<$Res> {
  factory _$$OfferImplCopyWith(
          _$OfferImpl value, $Res Function(_$OfferImpl) then) =
      __$$OfferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "offer_group_id") int? offerGroupId,
      @JsonKey(name: "status") bool? status,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "offer_group") OfferGroup? offerGroup,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});

  @override
  $OfferGroupCopyWith<$Res>? get offerGroup;
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
    Object? offerGroupId = freezed,
    Object? status = freezed,
    Object? image = freezed,
    Object? offerGroup = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$OfferImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      offerGroupId: freezed == offerGroupId
          ? _value.offerGroupId
          : offerGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      offerGroup: freezed == offerGroup
          ? _value.offerGroup
          : offerGroup // ignore: cast_nullable_to_non_nullable
              as OfferGroup?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfferImpl implements _Offer {
  const _$OfferImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "offer_group_id") this.offerGroupId,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "offer_group") this.offerGroup,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$OfferImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "offer_group_id")
  final int? offerGroupId;
  @override
  @JsonKey(name: "status")
  final bool? status;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "offer_group")
  final OfferGroup? offerGroup;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @override
  String toString() {
    return 'Offer(id: $id, offerGroupId: $offerGroupId, status: $status, image: $image, offerGroup: $offerGroup, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.offerGroupId, offerGroupId) ||
                other.offerGroupId == offerGroupId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.offerGroup, offerGroup) ||
                other.offerGroup == offerGroup) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, offerGroupId, status, image,
      offerGroup, createdAt, updatedAt);

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
      @JsonKey(name: "offer_group_id") final int? offerGroupId,
      @JsonKey(name: "status") final bool? status,
      @JsonKey(name: "image") final String? image,
      @JsonKey(name: "offer_group") final OfferGroup? offerGroup,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt}) = _$OfferImpl;

  factory _Offer.fromJson(Map<String, dynamic> json) = _$OfferImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "offer_group_id")
  int? get offerGroupId;
  @override
  @JsonKey(name: "status")
  bool? get status;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "offer_group")
  OfferGroup? get offerGroup;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;

  /// Create a copy of Offer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfferImplCopyWith<_$OfferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

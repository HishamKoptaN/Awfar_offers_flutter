// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OfferGroup _$OfferGroupFromJson(Map<String, dynamic> json) {
  return _OfferGroup.fromJson(json);
}

/// @nodoc
mixin _$OfferGroup {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "store_id")
  int? get storeId => throw _privateConstructorUsedError;
  @JsonKey(name: "start_at")
  DateTime? get startAt => throw _privateConstructorUsedError;
  @JsonKey(name: "end_at")
  DateTime? get endAt => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "days_remaining")
  String? get daysRemaining => throw _privateConstructorUsedError;
  @JsonKey(name: "offers")
  List<Offer>? get offers => throw _privateConstructorUsedError;
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
      @JsonKey(name: "status") bool? status,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "store_id") int? storeId,
      @JsonKey(name: "start_at") DateTime? startAt,
      @JsonKey(name: "end_at") DateTime? endAt,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "days_remaining") String? daysRemaining,
      @JsonKey(name: "offers") List<Offer>? offers,
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
    Object? startAt = freezed,
    Object? endAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? daysRemaining = freezed,
    Object? offers = freezed,
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
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as int?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      offers: freezed == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>?,
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
      @JsonKey(name: "status") bool? status,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "store_id") int? storeId,
      @JsonKey(name: "start_at") DateTime? startAt,
      @JsonKey(name: "end_at") DateTime? endAt,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "days_remaining") String? daysRemaining,
      @JsonKey(name: "offers") List<Offer>? offers,
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
    Object? startAt = freezed,
    Object? endAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? daysRemaining = freezed,
    Object? offers = freezed,
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
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as int?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      offers: freezed == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>?,
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
      @JsonKey(name: "start_at") this.startAt,
      @JsonKey(name: "end_at") this.endAt,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "days_remaining") this.daysRemaining,
      @JsonKey(name: "offers") final List<Offer>? offers,
      @JsonKey(name: "store") this.store})
      : _offers = offers;

  factory _$OfferGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferGroupImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "status")
  final bool? status;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "store_id")
  final int? storeId;
  @override
  @JsonKey(name: "start_at")
  final DateTime? startAt;
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
  @JsonKey(name: "store")
  final Store? store;

  @override
  String toString() {
    return 'OfferGroup(id: $id, status: $status, name: $name, storeId: $storeId, startAt: $startAt, endAt: $endAt, createdAt: $createdAt, updatedAt: $updatedAt, daysRemaining: $daysRemaining, offers: $offers, store: $store)';
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
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.daysRemaining, daysRemaining) ||
                other.daysRemaining == daysRemaining) &&
            const DeepCollectionEquality().equals(other._offers, _offers) &&
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
      startAt,
      endAt,
      createdAt,
      updatedAt,
      daysRemaining,
      const DeepCollectionEquality().hash(_offers),
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
      @JsonKey(name: "status") final bool? status,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "store_id") final int? storeId,
      @JsonKey(name: "start_at") final DateTime? startAt,
      @JsonKey(name: "end_at") final DateTime? endAt,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "days_remaining") final String? daysRemaining,
      @JsonKey(name: "offers") final List<Offer>? offers,
      @JsonKey(name: "store") final Store? store}) = _$OfferGroupImpl;

  factory _OfferGroup.fromJson(Map<String, dynamic> json) =
      _$OfferGroupImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "status")
  bool? get status;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "store_id")
  int? get storeId;
  @override
  @JsonKey(name: "start_at")
  DateTime? get startAt;
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
  @JsonKey(name: "offers")
  List<Offer>? get offers;
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

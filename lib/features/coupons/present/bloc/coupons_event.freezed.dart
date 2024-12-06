// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupons_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CouponsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int governorateId) getCoupons,
    required TResult Function(int id, bool add) updateFavs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int governorateId)? getCoupons,
    TResult? Function(int id, bool add)? updateFavs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int governorateId)? getCoupons,
    TResult Function(int id, bool add)? updateFavs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCoupons value) getCoupons,
    required TResult Function(_UpdateFavs value) updateFavs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCoupons value)? getCoupons,
    TResult? Function(_UpdateFavs value)? updateFavs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCoupons value)? getCoupons,
    TResult Function(_UpdateFavs value)? updateFavs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponsEventCopyWith<$Res> {
  factory $CouponsEventCopyWith(
          CouponsEvent value, $Res Function(CouponsEvent) then) =
      _$CouponsEventCopyWithImpl<$Res, CouponsEvent>;
}

/// @nodoc
class _$CouponsEventCopyWithImpl<$Res, $Val extends CouponsEvent>
    implements $CouponsEventCopyWith<$Res> {
  _$CouponsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CouponsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetCouponsImplCopyWith<$Res> {
  factory _$$GetCouponsImplCopyWith(
          _$GetCouponsImpl value, $Res Function(_$GetCouponsImpl) then) =
      __$$GetCouponsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int governorateId});
}

/// @nodoc
class __$$GetCouponsImplCopyWithImpl<$Res>
    extends _$CouponsEventCopyWithImpl<$Res, _$GetCouponsImpl>
    implements _$$GetCouponsImplCopyWith<$Res> {
  __$$GetCouponsImplCopyWithImpl(
      _$GetCouponsImpl _value, $Res Function(_$GetCouponsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CouponsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? governorateId = null,
  }) {
    return _then(_$GetCouponsImpl(
      governorateId: null == governorateId
          ? _value.governorateId
          : governorateId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetCouponsImpl implements _GetCoupons {
  const _$GetCouponsImpl({required this.governorateId});

  @override
  final int governorateId;

  @override
  String toString() {
    return 'CouponsEvent.getCoupons(governorateId: $governorateId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCouponsImpl &&
            (identical(other.governorateId, governorateId) ||
                other.governorateId == governorateId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, governorateId);

  /// Create a copy of CouponsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCouponsImplCopyWith<_$GetCouponsImpl> get copyWith =>
      __$$GetCouponsImplCopyWithImpl<_$GetCouponsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int governorateId) getCoupons,
    required TResult Function(int id, bool add) updateFavs,
  }) {
    return getCoupons(governorateId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int governorateId)? getCoupons,
    TResult? Function(int id, bool add)? updateFavs,
  }) {
    return getCoupons?.call(governorateId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int governorateId)? getCoupons,
    TResult Function(int id, bool add)? updateFavs,
    required TResult orElse(),
  }) {
    if (getCoupons != null) {
      return getCoupons(governorateId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCoupons value) getCoupons,
    required TResult Function(_UpdateFavs value) updateFavs,
  }) {
    return getCoupons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCoupons value)? getCoupons,
    TResult? Function(_UpdateFavs value)? updateFavs,
  }) {
    return getCoupons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCoupons value)? getCoupons,
    TResult Function(_UpdateFavs value)? updateFavs,
    required TResult orElse(),
  }) {
    if (getCoupons != null) {
      return getCoupons(this);
    }
    return orElse();
  }
}

abstract class _GetCoupons implements CouponsEvent {
  const factory _GetCoupons({required final int governorateId}) =
      _$GetCouponsImpl;

  int get governorateId;

  /// Create a copy of CouponsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCouponsImplCopyWith<_$GetCouponsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateFavsImplCopyWith<$Res> {
  factory _$$UpdateFavsImplCopyWith(
          _$UpdateFavsImpl value, $Res Function(_$UpdateFavsImpl) then) =
      __$$UpdateFavsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, bool add});
}

/// @nodoc
class __$$UpdateFavsImplCopyWithImpl<$Res>
    extends _$CouponsEventCopyWithImpl<$Res, _$UpdateFavsImpl>
    implements _$$UpdateFavsImplCopyWith<$Res> {
  __$$UpdateFavsImplCopyWithImpl(
      _$UpdateFavsImpl _value, $Res Function(_$UpdateFavsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CouponsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? add = null,
  }) {
    return _then(_$UpdateFavsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      add: null == add
          ? _value.add
          : add // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateFavsImpl implements _UpdateFavs {
  const _$UpdateFavsImpl({required this.id, required this.add});

  @override
  final int id;
  @override
  final bool add;

  @override
  String toString() {
    return 'CouponsEvent.updateFavs(id: $id, add: $add)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFavsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.add, add) || other.add == add));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, add);

  /// Create a copy of CouponsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFavsImplCopyWith<_$UpdateFavsImpl> get copyWith =>
      __$$UpdateFavsImplCopyWithImpl<_$UpdateFavsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int governorateId) getCoupons,
    required TResult Function(int id, bool add) updateFavs,
  }) {
    return updateFavs(id, add);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int governorateId)? getCoupons,
    TResult? Function(int id, bool add)? updateFavs,
  }) {
    return updateFavs?.call(id, add);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int governorateId)? getCoupons,
    TResult Function(int id, bool add)? updateFavs,
    required TResult orElse(),
  }) {
    if (updateFavs != null) {
      return updateFavs(id, add);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCoupons value) getCoupons,
    required TResult Function(_UpdateFavs value) updateFavs,
  }) {
    return updateFavs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCoupons value)? getCoupons,
    TResult? Function(_UpdateFavs value)? updateFavs,
  }) {
    return updateFavs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCoupons value)? getCoupons,
    TResult Function(_UpdateFavs value)? updateFavs,
    required TResult orElse(),
  }) {
    if (updateFavs != null) {
      return updateFavs(this);
    }
    return orElse();
  }
}

abstract class _UpdateFavs implements CouponsEvent {
  const factory _UpdateFavs({required final int id, required final bool add}) =
      _$UpdateFavsImpl;

  int get id;
  bool get add;

  /// Create a copy of CouponsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFavsImplCopyWith<_$UpdateFavsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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
  int get governorateId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int governorateId) getCoupons,
    required TResult Function(int governorateId) addToFavorites,
    required TResult Function(int governorateId) removeFromFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int governorateId)? getCoupons,
    TResult? Function(int governorateId)? addToFavorites,
    TResult? Function(int governorateId)? removeFromFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int governorateId)? getCoupons,
    TResult Function(int governorateId)? addToFavorites,
    TResult Function(int governorateId)? removeFromFavorites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCoupons value) getCoupons,
    required TResult Function(_AddToFavorites value) addToFavorites,
    required TResult Function(_RemoveFromFavorites value) removeFromFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCoupons value)? getCoupons,
    TResult? Function(_AddToFavorites value)? addToFavorites,
    TResult? Function(_RemoveFromFavorites value)? removeFromFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCoupons value)? getCoupons,
    TResult Function(_AddToFavorites value)? addToFavorites,
    TResult Function(_RemoveFromFavorites value)? removeFromFavorites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CouponsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CouponsEventCopyWith<CouponsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponsEventCopyWith<$Res> {
  factory $CouponsEventCopyWith(
          CouponsEvent value, $Res Function(CouponsEvent) then) =
      _$CouponsEventCopyWithImpl<$Res, CouponsEvent>;
  @useResult
  $Res call({int governorateId});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? governorateId = null,
  }) {
    return _then(_value.copyWith(
      governorateId: null == governorateId
          ? _value.governorateId
          : governorateId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCouponsImplCopyWith<$Res>
    implements $CouponsEventCopyWith<$Res> {
  factory _$$GetCouponsImplCopyWith(
          _$GetCouponsImpl value, $Res Function(_$GetCouponsImpl) then) =
      __$$GetCouponsImplCopyWithImpl<$Res>;
  @override
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
    required TResult Function(int governorateId) addToFavorites,
    required TResult Function(int governorateId) removeFromFavorites,
  }) {
    return getCoupons(governorateId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int governorateId)? getCoupons,
    TResult? Function(int governorateId)? addToFavorites,
    TResult? Function(int governorateId)? removeFromFavorites,
  }) {
    return getCoupons?.call(governorateId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int governorateId)? getCoupons,
    TResult Function(int governorateId)? addToFavorites,
    TResult Function(int governorateId)? removeFromFavorites,
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
    required TResult Function(_AddToFavorites value) addToFavorites,
    required TResult Function(_RemoveFromFavorites value) removeFromFavorites,
  }) {
    return getCoupons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCoupons value)? getCoupons,
    TResult? Function(_AddToFavorites value)? addToFavorites,
    TResult? Function(_RemoveFromFavorites value)? removeFromFavorites,
  }) {
    return getCoupons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCoupons value)? getCoupons,
    TResult Function(_AddToFavorites value)? addToFavorites,
    TResult Function(_RemoveFromFavorites value)? removeFromFavorites,
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

  @override
  int get governorateId;

  /// Create a copy of CouponsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCouponsImplCopyWith<_$GetCouponsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToFavoritesImplCopyWith<$Res>
    implements $CouponsEventCopyWith<$Res> {
  factory _$$AddToFavoritesImplCopyWith(_$AddToFavoritesImpl value,
          $Res Function(_$AddToFavoritesImpl) then) =
      __$$AddToFavoritesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int governorateId});
}

/// @nodoc
class __$$AddToFavoritesImplCopyWithImpl<$Res>
    extends _$CouponsEventCopyWithImpl<$Res, _$AddToFavoritesImpl>
    implements _$$AddToFavoritesImplCopyWith<$Res> {
  __$$AddToFavoritesImplCopyWithImpl(
      _$AddToFavoritesImpl _value, $Res Function(_$AddToFavoritesImpl) _then)
      : super(_value, _then);

  /// Create a copy of CouponsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? governorateId = null,
  }) {
    return _then(_$AddToFavoritesImpl(
      governorateId: null == governorateId
          ? _value.governorateId
          : governorateId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddToFavoritesImpl implements _AddToFavorites {
  const _$AddToFavoritesImpl({required this.governorateId});

  @override
  final int governorateId;

  @override
  String toString() {
    return 'CouponsEvent.addToFavorites(governorateId: $governorateId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToFavoritesImpl &&
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
  _$$AddToFavoritesImplCopyWith<_$AddToFavoritesImpl> get copyWith =>
      __$$AddToFavoritesImplCopyWithImpl<_$AddToFavoritesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int governorateId) getCoupons,
    required TResult Function(int governorateId) addToFavorites,
    required TResult Function(int governorateId) removeFromFavorites,
  }) {
    return addToFavorites(governorateId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int governorateId)? getCoupons,
    TResult? Function(int governorateId)? addToFavorites,
    TResult? Function(int governorateId)? removeFromFavorites,
  }) {
    return addToFavorites?.call(governorateId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int governorateId)? getCoupons,
    TResult Function(int governorateId)? addToFavorites,
    TResult Function(int governorateId)? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (addToFavorites != null) {
      return addToFavorites(governorateId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCoupons value) getCoupons,
    required TResult Function(_AddToFavorites value) addToFavorites,
    required TResult Function(_RemoveFromFavorites value) removeFromFavorites,
  }) {
    return addToFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCoupons value)? getCoupons,
    TResult? Function(_AddToFavorites value)? addToFavorites,
    TResult? Function(_RemoveFromFavorites value)? removeFromFavorites,
  }) {
    return addToFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCoupons value)? getCoupons,
    TResult Function(_AddToFavorites value)? addToFavorites,
    TResult Function(_RemoveFromFavorites value)? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (addToFavorites != null) {
      return addToFavorites(this);
    }
    return orElse();
  }
}

abstract class _AddToFavorites implements CouponsEvent {
  const factory _AddToFavorites({required final int governorateId}) =
      _$AddToFavoritesImpl;

  @override
  int get governorateId;

  /// Create a copy of CouponsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddToFavoritesImplCopyWith<_$AddToFavoritesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFromFavoritesImplCopyWith<$Res>
    implements $CouponsEventCopyWith<$Res> {
  factory _$$RemoveFromFavoritesImplCopyWith(_$RemoveFromFavoritesImpl value,
          $Res Function(_$RemoveFromFavoritesImpl) then) =
      __$$RemoveFromFavoritesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int governorateId});
}

/// @nodoc
class __$$RemoveFromFavoritesImplCopyWithImpl<$Res>
    extends _$CouponsEventCopyWithImpl<$Res, _$RemoveFromFavoritesImpl>
    implements _$$RemoveFromFavoritesImplCopyWith<$Res> {
  __$$RemoveFromFavoritesImplCopyWithImpl(_$RemoveFromFavoritesImpl _value,
      $Res Function(_$RemoveFromFavoritesImpl) _then)
      : super(_value, _then);

  /// Create a copy of CouponsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? governorateId = null,
  }) {
    return _then(_$RemoveFromFavoritesImpl(
      governorateId: null == governorateId
          ? _value.governorateId
          : governorateId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveFromFavoritesImpl implements _RemoveFromFavorites {
  const _$RemoveFromFavoritesImpl({required this.governorateId});

  @override
  final int governorateId;

  @override
  String toString() {
    return 'CouponsEvent.removeFromFavorites(governorateId: $governorateId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFromFavoritesImpl &&
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
  _$$RemoveFromFavoritesImplCopyWith<_$RemoveFromFavoritesImpl> get copyWith =>
      __$$RemoveFromFavoritesImplCopyWithImpl<_$RemoveFromFavoritesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int governorateId) getCoupons,
    required TResult Function(int governorateId) addToFavorites,
    required TResult Function(int governorateId) removeFromFavorites,
  }) {
    return removeFromFavorites(governorateId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int governorateId)? getCoupons,
    TResult? Function(int governorateId)? addToFavorites,
    TResult? Function(int governorateId)? removeFromFavorites,
  }) {
    return removeFromFavorites?.call(governorateId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int governorateId)? getCoupons,
    TResult Function(int governorateId)? addToFavorites,
    TResult Function(int governorateId)? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (removeFromFavorites != null) {
      return removeFromFavorites(governorateId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCoupons value) getCoupons,
    required TResult Function(_AddToFavorites value) addToFavorites,
    required TResult Function(_RemoveFromFavorites value) removeFromFavorites,
  }) {
    return removeFromFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCoupons value)? getCoupons,
    TResult? Function(_AddToFavorites value)? addToFavorites,
    TResult? Function(_RemoveFromFavorites value)? removeFromFavorites,
  }) {
    return removeFromFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCoupons value)? getCoupons,
    TResult Function(_AddToFavorites value)? addToFavorites,
    TResult Function(_RemoveFromFavorites value)? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (removeFromFavorites != null) {
      return removeFromFavorites(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromFavorites implements CouponsEvent {
  const factory _RemoveFromFavorites({required final int governorateId}) =
      _$RemoveFromFavoritesImpl;

  @override
  int get governorateId;

  /// Create a copy of CouponsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveFromFavoritesImplCopyWith<_$RemoveFromFavoritesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

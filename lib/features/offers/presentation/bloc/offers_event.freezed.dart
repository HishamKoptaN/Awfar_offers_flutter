// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offers_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OffersEvent {
  int get governorateId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int governorateId) getOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int governorateId)? getOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int governorateId)? getOffers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOffers value) getOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOffers value)? getOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOffers value)? getOffers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of OffersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OffersEventCopyWith<OffersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersEventCopyWith<$Res> {
  factory $OffersEventCopyWith(
          OffersEvent value, $Res Function(OffersEvent) then) =
      _$OffersEventCopyWithImpl<$Res, OffersEvent>;
  @useResult
  $Res call({int governorateId});
}

/// @nodoc
class _$OffersEventCopyWithImpl<$Res, $Val extends OffersEvent>
    implements $OffersEventCopyWith<$Res> {
  _$OffersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OffersEvent
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
abstract class _$$GetOffersImplCopyWith<$Res>
    implements $OffersEventCopyWith<$Res> {
  factory _$$GetOffersImplCopyWith(
          _$GetOffersImpl value, $Res Function(_$GetOffersImpl) then) =
      __$$GetOffersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int governorateId});
}

/// @nodoc
class __$$GetOffersImplCopyWithImpl<$Res>
    extends _$OffersEventCopyWithImpl<$Res, _$GetOffersImpl>
    implements _$$GetOffersImplCopyWith<$Res> {
  __$$GetOffersImplCopyWithImpl(
      _$GetOffersImpl _value, $Res Function(_$GetOffersImpl) _then)
      : super(_value, _then);

  /// Create a copy of OffersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? governorateId = null,
  }) {
    return _then(_$GetOffersImpl(
      governorateId: null == governorateId
          ? _value.governorateId
          : governorateId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetOffersImpl implements _GetOffers {
  const _$GetOffersImpl({required this.governorateId});

  @override
  final int governorateId;

  @override
  String toString() {
    return 'OffersEvent.getOffers(governorateId: $governorateId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOffersImpl &&
            (identical(other.governorateId, governorateId) ||
                other.governorateId == governorateId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, governorateId);

  /// Create a copy of OffersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOffersImplCopyWith<_$GetOffersImpl> get copyWith =>
      __$$GetOffersImplCopyWithImpl<_$GetOffersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int governorateId) getOffers,
  }) {
    return getOffers(governorateId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int governorateId)? getOffers,
  }) {
    return getOffers?.call(governorateId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int governorateId)? getOffers,
    required TResult orElse(),
  }) {
    if (getOffers != null) {
      return getOffers(governorateId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOffers value) getOffers,
  }) {
    return getOffers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOffers value)? getOffers,
  }) {
    return getOffers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOffers value)? getOffers,
    required TResult orElse(),
  }) {
    if (getOffers != null) {
      return getOffers(this);
    }
    return orElse();
  }
}

abstract class _GetOffers implements OffersEvent {
  const factory _GetOffers({required final int governorateId}) =
      _$GetOffersImpl;

  @override
  int get governorateId;

  /// Create a copy of OffersEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetOffersImplCopyWith<_$GetOffersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

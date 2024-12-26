// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'markas_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MarkasEvent {
  int get subCategoryId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int subCategoryId) getMarkas,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int subCategoryId)? getMarkas,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int subCategoryId)? getMarkas,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMarkas value) getMarkas,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMarkas value)? getMarkas,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMarkas value)? getMarkas,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MarkasEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarkasEventCopyWith<MarkasEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkasEventCopyWith<$Res> {
  factory $MarkasEventCopyWith(
          MarkasEvent value, $Res Function(MarkasEvent) then) =
      _$MarkasEventCopyWithImpl<$Res, MarkasEvent>;
  @useResult
  $Res call({int subCategoryId});
}

/// @nodoc
class _$MarkasEventCopyWithImpl<$Res, $Val extends MarkasEvent>
    implements $MarkasEventCopyWith<$Res> {
  _$MarkasEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarkasEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subCategoryId = null,
  }) {
    return _then(_value.copyWith(
      subCategoryId: null == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetMarkasImplCopyWith<$Res>
    implements $MarkasEventCopyWith<$Res> {
  factory _$$GetMarkasImplCopyWith(
          _$GetMarkasImpl value, $Res Function(_$GetMarkasImpl) then) =
      __$$GetMarkasImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int subCategoryId});
}

/// @nodoc
class __$$GetMarkasImplCopyWithImpl<$Res>
    extends _$MarkasEventCopyWithImpl<$Res, _$GetMarkasImpl>
    implements _$$GetMarkasImplCopyWith<$Res> {
  __$$GetMarkasImplCopyWithImpl(
      _$GetMarkasImpl _value, $Res Function(_$GetMarkasImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarkasEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subCategoryId = null,
  }) {
    return _then(_$GetMarkasImpl(
      subCategoryId: null == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetMarkasImpl implements _GetMarkas {
  const _$GetMarkasImpl({required this.subCategoryId});

  @override
  final int subCategoryId;

  @override
  String toString() {
    return 'MarkasEvent.getMarkas(subCategoryId: $subCategoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMarkasImpl &&
            (identical(other.subCategoryId, subCategoryId) ||
                other.subCategoryId == subCategoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subCategoryId);

  /// Create a copy of MarkasEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMarkasImplCopyWith<_$GetMarkasImpl> get copyWith =>
      __$$GetMarkasImplCopyWithImpl<_$GetMarkasImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int subCategoryId) getMarkas,
  }) {
    return getMarkas(subCategoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int subCategoryId)? getMarkas,
  }) {
    return getMarkas?.call(subCategoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int subCategoryId)? getMarkas,
    required TResult orElse(),
  }) {
    if (getMarkas != null) {
      return getMarkas(subCategoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMarkas value) getMarkas,
  }) {
    return getMarkas(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMarkas value)? getMarkas,
  }) {
    return getMarkas?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMarkas value)? getMarkas,
    required TResult orElse(),
  }) {
    if (getMarkas != null) {
      return getMarkas(this);
    }
    return orElse();
  }
}

abstract class _GetMarkas implements MarkasEvent {
  const factory _GetMarkas({required final int subCategoryId}) =
      _$GetMarkasImpl;

  @override
  int get subCategoryId;

  /// Create a copy of MarkasEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMarkasImplCopyWith<_$GetMarkasImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'external_notifications_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExternalNotificationsEvent {
  int get governorateId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int governorateId) saveTopic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int governorateId)? saveTopic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int governorateId)? saveTopic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveTopic value) saveTopic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveTopic value)? saveTopic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveTopic value)? saveTopic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ExternalNotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExternalNotificationsEventCopyWith<ExternalNotificationsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalNotificationsEventCopyWith<$Res> {
  factory $ExternalNotificationsEventCopyWith(ExternalNotificationsEvent value,
          $Res Function(ExternalNotificationsEvent) then) =
      _$ExternalNotificationsEventCopyWithImpl<$Res,
          ExternalNotificationsEvent>;
  @useResult
  $Res call({int governorateId});
}

/// @nodoc
class _$ExternalNotificationsEventCopyWithImpl<$Res,
        $Val extends ExternalNotificationsEvent>
    implements $ExternalNotificationsEventCopyWith<$Res> {
  _$ExternalNotificationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExternalNotificationsEvent
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
abstract class _$$SaveTopicImplCopyWith<$Res>
    implements $ExternalNotificationsEventCopyWith<$Res> {
  factory _$$SaveTopicImplCopyWith(
          _$SaveTopicImpl value, $Res Function(_$SaveTopicImpl) then) =
      __$$SaveTopicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int governorateId});
}

/// @nodoc
class __$$SaveTopicImplCopyWithImpl<$Res>
    extends _$ExternalNotificationsEventCopyWithImpl<$Res, _$SaveTopicImpl>
    implements _$$SaveTopicImplCopyWith<$Res> {
  __$$SaveTopicImplCopyWithImpl(
      _$SaveTopicImpl _value, $Res Function(_$SaveTopicImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExternalNotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? governorateId = null,
  }) {
    return _then(_$SaveTopicImpl(
      governorateId: null == governorateId
          ? _value.governorateId
          : governorateId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SaveTopicImpl implements _SaveTopic {
  const _$SaveTopicImpl({required this.governorateId});

  @override
  final int governorateId;

  @override
  String toString() {
    return 'ExternalNotificationsEvent.saveTopic(governorateId: $governorateId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveTopicImpl &&
            (identical(other.governorateId, governorateId) ||
                other.governorateId == governorateId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, governorateId);

  /// Create a copy of ExternalNotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveTopicImplCopyWith<_$SaveTopicImpl> get copyWith =>
      __$$SaveTopicImplCopyWithImpl<_$SaveTopicImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int governorateId) saveTopic,
  }) {
    return saveTopic(governorateId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int governorateId)? saveTopic,
  }) {
    return saveTopic?.call(governorateId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int governorateId)? saveTopic,
    required TResult orElse(),
  }) {
    if (saveTopic != null) {
      return saveTopic(governorateId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveTopic value) saveTopic,
  }) {
    return saveTopic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveTopic value)? saveTopic,
  }) {
    return saveTopic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveTopic value)? saveTopic,
    required TResult orElse(),
  }) {
    if (saveTopic != null) {
      return saveTopic(this);
    }
    return orElse();
  }
}

abstract class _SaveTopic implements ExternalNotificationsEvent {
  const factory _SaveTopic({required final int governorateId}) =
      _$SaveTopicImpl;

  @override
  int get governorateId;

  /// Create a copy of ExternalNotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveTopicImplCopyWith<_$SaveTopicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

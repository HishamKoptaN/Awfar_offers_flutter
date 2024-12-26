// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cities_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CitiesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCities value) getCities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCities value)? getCities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCities value)? getCities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitiesEventCopyWith<$Res> {
  factory $CitiesEventCopyWith(
          CitiesEvent value, $Res Function(CitiesEvent) then) =
      _$CitiesEventCopyWithImpl<$Res, CitiesEvent>;
}

/// @nodoc
class _$CitiesEventCopyWithImpl<$Res, $Val extends CitiesEvent>
    implements $CitiesEventCopyWith<$Res> {
  _$CitiesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CitiesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetCitiesImplCopyWith<$Res> {
  factory _$$GetCitiesImplCopyWith(
          _$GetCitiesImpl value, $Res Function(_$GetCitiesImpl) then) =
      __$$GetCitiesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCitiesImplCopyWithImpl<$Res>
    extends _$CitiesEventCopyWithImpl<$Res, _$GetCitiesImpl>
    implements _$$GetCitiesImplCopyWith<$Res> {
  __$$GetCitiesImplCopyWithImpl(
      _$GetCitiesImpl _value, $Res Function(_$GetCitiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of CitiesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCitiesImpl implements _GetCities {
  const _$GetCitiesImpl();

  @override
  String toString() {
    return 'CitiesEvent.getCities()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCitiesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCities,
  }) {
    return getCities();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCities,
  }) {
    return getCities?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCities,
    required TResult orElse(),
  }) {
    if (getCities != null) {
      return getCities();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCities value) getCities,
  }) {
    return getCities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCities value)? getCities,
  }) {
    return getCities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCities value)? getCities,
    required TResult orElse(),
  }) {
    if (getCities != null) {
      return getCities(this);
    }
    return orElse();
  }
}

abstract class _GetCities implements CitiesEvent {
  const factory _GetCities() = _$GetCitiesImpl;
}

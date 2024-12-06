// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_categories_items_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubCategoriesItemsEvent {
  int get subCategoryId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int subCategoryId) getSubCategoriesItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int subCategoryId)? getSubCategoriesItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int subCategoryId)? getSubCategoriesItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSubCategoriesItems value)
        getSubCategoriesItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSubCategoriesItems value)? getSubCategoriesItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSubCategoriesItems value)? getSubCategoriesItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SubCategoriesItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubCategoriesItemsEventCopyWith<SubCategoriesItemsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoriesItemsEventCopyWith<$Res> {
  factory $SubCategoriesItemsEventCopyWith(SubCategoriesItemsEvent value,
          $Res Function(SubCategoriesItemsEvent) then) =
      _$SubCategoriesItemsEventCopyWithImpl<$Res, SubCategoriesItemsEvent>;
  @useResult
  $Res call({int subCategoryId});
}

/// @nodoc
class _$SubCategoriesItemsEventCopyWithImpl<$Res,
        $Val extends SubCategoriesItemsEvent>
    implements $SubCategoriesItemsEventCopyWith<$Res> {
  _$SubCategoriesItemsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubCategoriesItemsEvent
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
abstract class _$$GetSubCategoriesItemsImplCopyWith<$Res>
    implements $SubCategoriesItemsEventCopyWith<$Res> {
  factory _$$GetSubCategoriesItemsImplCopyWith(
          _$GetSubCategoriesItemsImpl value,
          $Res Function(_$GetSubCategoriesItemsImpl) then) =
      __$$GetSubCategoriesItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int subCategoryId});
}

/// @nodoc
class __$$GetSubCategoriesItemsImplCopyWithImpl<$Res>
    extends _$SubCategoriesItemsEventCopyWithImpl<$Res,
        _$GetSubCategoriesItemsImpl>
    implements _$$GetSubCategoriesItemsImplCopyWith<$Res> {
  __$$GetSubCategoriesItemsImplCopyWithImpl(_$GetSubCategoriesItemsImpl _value,
      $Res Function(_$GetSubCategoriesItemsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubCategoriesItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subCategoryId = null,
  }) {
    return _then(_$GetSubCategoriesItemsImpl(
      subCategoryId: null == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetSubCategoriesItemsImpl implements _GetSubCategoriesItems {
  const _$GetSubCategoriesItemsImpl({required this.subCategoryId});

  @override
  final int subCategoryId;

  @override
  String toString() {
    return 'SubCategoriesItemsEvent.getSubCategoriesItems(subCategoryId: $subCategoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSubCategoriesItemsImpl &&
            (identical(other.subCategoryId, subCategoryId) ||
                other.subCategoryId == subCategoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subCategoryId);

  /// Create a copy of SubCategoriesItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSubCategoriesItemsImplCopyWith<_$GetSubCategoriesItemsImpl>
      get copyWith => __$$GetSubCategoriesItemsImplCopyWithImpl<
          _$GetSubCategoriesItemsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int subCategoryId) getSubCategoriesItems,
  }) {
    return getSubCategoriesItems(subCategoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int subCategoryId)? getSubCategoriesItems,
  }) {
    return getSubCategoriesItems?.call(subCategoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int subCategoryId)? getSubCategoriesItems,
    required TResult orElse(),
  }) {
    if (getSubCategoriesItems != null) {
      return getSubCategoriesItems(subCategoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSubCategoriesItems value)
        getSubCategoriesItems,
  }) {
    return getSubCategoriesItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSubCategoriesItems value)? getSubCategoriesItems,
  }) {
    return getSubCategoriesItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSubCategoriesItems value)? getSubCategoriesItems,
    required TResult orElse(),
  }) {
    if (getSubCategoriesItems != null) {
      return getSubCategoriesItems(this);
    }
    return orElse();
  }
}

abstract class _GetSubCategoriesItems implements SubCategoriesItemsEvent {
  const factory _GetSubCategoriesItems({required final int subCategoryId}) =
      _$GetSubCategoriesItemsImpl;

  @override
  int get subCategoryId;

  /// Create a copy of SubCategoriesItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSubCategoriesItemsImplCopyWith<_$GetSubCategoriesItemsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

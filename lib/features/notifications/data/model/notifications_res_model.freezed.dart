// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Notification _$NotificationFromJson(Map<String, dynamic> json) {
  return _Notification.fromJson(json);
}

/// @nodoc
mixin _$Notification {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  dynamic get type => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "read_at")
  dynamic get readAt => throw _privateConstructorUsedError;
  @JsonKey(name: "store")
  Store? get store => throw _privateConstructorUsedError;

  /// Serializes this Notification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationCopyWith<Notification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationCopyWith<$Res> {
  factory $NotificationCopyWith(
          Notification value, $Res Function(Notification) then) =
      _$NotificationCopyWithImpl<$Res, Notification>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "type") dynamic type,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "read_at") dynamic readAt,
      @JsonKey(name: "store") Store? store});

  $StoreCopyWith<$Res>? get store;
}

/// @nodoc
class _$NotificationCopyWithImpl<$Res, $Val extends Notification>
    implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? message = freezed,
    Object? image = freezed,
    Object? readAt = freezed,
    Object? store = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      store: freezed == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store?,
    ) as $Val);
  }

  /// Create a copy of Notification
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
abstract class _$$NotificationImplCopyWith<$Res>
    implements $NotificationCopyWith<$Res> {
  factory _$$NotificationImplCopyWith(
          _$NotificationImpl value, $Res Function(_$NotificationImpl) then) =
      __$$NotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "type") dynamic type,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "read_at") dynamic readAt,
      @JsonKey(name: "store") Store? store});

  @override
  $StoreCopyWith<$Res>? get store;
}

/// @nodoc
class __$$NotificationImplCopyWithImpl<$Res>
    extends _$NotificationCopyWithImpl<$Res, _$NotificationImpl>
    implements _$$NotificationImplCopyWith<$Res> {
  __$$NotificationImplCopyWithImpl(
      _$NotificationImpl _value, $Res Function(_$NotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? message = freezed,
    Object? image = freezed,
    Object? readAt = freezed,
    Object? store = freezed,
  }) {
    return _then(_$NotificationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      store: freezed == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationImpl implements _Notification {
  const _$NotificationImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "read_at") this.readAt,
      @JsonKey(name: "store") this.store});

  factory _$NotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "type")
  final dynamic type;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "read_at")
  final dynamic readAt;
  @override
  @JsonKey(name: "store")
  final Store? store;

  @override
  String toString() {
    return 'Notification(id: $id, type: $type, message: $message, image: $image, readAt: $readAt, store: $store)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other.readAt, readAt) &&
            (identical(other.store, store) || other.store == store));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(type),
      message,
      image,
      const DeepCollectionEquality().hash(readAt),
      store);

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationImplCopyWith<_$NotificationImpl> get copyWith =>
      __$$NotificationImplCopyWithImpl<_$NotificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationImplToJson(
      this,
    );
  }
}

abstract class _Notification implements Notification {
  const factory _Notification(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "type") final dynamic type,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "image") final String? image,
      @JsonKey(name: "read_at") final dynamic readAt,
      @JsonKey(name: "store") final Store? store}) = _$NotificationImpl;

  factory _Notification.fromJson(Map<String, dynamic> json) =
      _$NotificationImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "type")
  dynamic get type;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "read_at")
  dynamic get readAt;
  @override
  @JsonKey(name: "store")
  Store? get store;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationImplCopyWith<_$NotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Store _$StoreFromJson(Map<String, dynamic> json) {
  return _Store.fromJson(json);
}

/// @nodoc
mixin _$Store {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this Store to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreCopyWith<Store> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreCopyWith<$Res> {
  factory $StoreCopyWith(Store value, $Res Function(Store) then) =
      _$StoreCopyWithImpl<$Res, Store>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "image") String? image});
}

/// @nodoc
class _$StoreCopyWithImpl<$Res, $Val extends Store>
    implements $StoreCopyWith<$Res> {
  _$StoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreImplCopyWith<$Res> implements $StoreCopyWith<$Res> {
  factory _$$StoreImplCopyWith(
          _$StoreImpl value, $Res Function(_$StoreImpl) then) =
      __$$StoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "image") String? image});
}

/// @nodoc
class __$$StoreImplCopyWithImpl<$Res>
    extends _$StoreCopyWithImpl<$Res, _$StoreImpl>
    implements _$$StoreImplCopyWith<$Res> {
  __$$StoreImplCopyWithImpl(
      _$StoreImpl _value, $Res Function(_$StoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_$StoreImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreImpl implements _Store {
  const _$StoreImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "image") this.image});

  factory _$StoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreImplFromJson(json);

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
  String toString() {
    return 'Store(id: $id, name: $name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image);

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreImplCopyWith<_$StoreImpl> get copyWith =>
      __$$StoreImplCopyWithImpl<_$StoreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreImplToJson(
      this,
    );
  }
}

abstract class _Store implements Store {
  const factory _Store(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "image") final String? image}) = _$StoreImpl;

  factory _Store.fromJson(Map<String, dynamic> json) = _$StoreImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "image")
  String? get image;

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreImplCopyWith<_$StoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

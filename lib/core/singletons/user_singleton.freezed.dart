// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_singleton.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "account_number")
  String get accountNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "online_offline")
  String get onlineOffline => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "balance")
  double get balance => throw _privateConstructorUsedError;
  @JsonKey(name: "plan_id")
  int get planId => throw _privateConstructorUsedError;
  @JsonKey(name: "upgraded_at")
  String get upgradedAt => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "account_number") String accountNumber,
      @JsonKey(name: "online_offline") String onlineOffline,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "address") String address,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "balance") double balance,
      @JsonKey(name: "plan_id") int planId,
      @JsonKey(name: "upgraded_at") String upgradedAt});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountNumber = null,
    Object? onlineOffline = null,
    Object? name = null,
    Object? username = null,
    Object? email = null,
    Object? image = null,
    Object? address = null,
    Object? phone = null,
    Object? balance = null,
    Object? planId = null,
    Object? upgradedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      onlineOffline: null == onlineOffline
          ? _value.onlineOffline
          : onlineOffline // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      planId: null == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as int,
      upgradedAt: null == upgradedAt
          ? _value.upgradedAt
          : upgradedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "account_number") String accountNumber,
      @JsonKey(name: "online_offline") String onlineOffline,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "address") String address,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "balance") double balance,
      @JsonKey(name: "plan_id") int planId,
      @JsonKey(name: "upgraded_at") String upgradedAt});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountNumber = null,
    Object? onlineOffline = null,
    Object? name = null,
    Object? username = null,
    Object? email = null,
    Object? image = null,
    Object? address = null,
    Object? phone = null,
    Object? balance = null,
    Object? planId = null,
    Object? upgradedAt = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      onlineOffline: null == onlineOffline
          ? _value.onlineOffline
          : onlineOffline // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      planId: null == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as int,
      upgradedAt: null == upgradedAt
          ? _value.upgradedAt
          : upgradedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {@JsonKey(name: "id") this.id = 0,
      @JsonKey(name: "account_number") this.accountNumber = "",
      @JsonKey(name: "online_offline") this.onlineOffline = "",
      @JsonKey(name: "name") this.name = "",
      @JsonKey(name: "username") this.username = "",
      @JsonKey(name: "email") this.email = "",
      @JsonKey(name: "image") this.image = "",
      @JsonKey(name: "address") this.address = "",
      @JsonKey(name: "phone") this.phone = "",
      @JsonKey(name: "balance") this.balance = 0.0,
      @JsonKey(name: "plan_id") this.planId = 1,
      @JsonKey(name: "upgraded_at") this.upgradedAt = ""});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "account_number")
  final String accountNumber;
  @override
  @JsonKey(name: "online_offline")
  final String onlineOffline;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "username")
  final String username;
  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "image")
  final String image;
  @override
  @JsonKey(name: "address")
  final String address;
  @override
  @JsonKey(name: "phone")
  final String phone;
  @override
  @JsonKey(name: "balance")
  final double balance;
  @override
  @JsonKey(name: "plan_id")
  final int planId;
  @override
  @JsonKey(name: "upgraded_at")
  final String upgradedAt;

  @override
  String toString() {
    return 'User(id: $id, accountNumber: $accountNumber, onlineOffline: $onlineOffline, name: $name, username: $username, email: $email, image: $image, address: $address, phone: $phone, balance: $balance, planId: $planId, upgradedAt: $upgradedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.onlineOffline, onlineOffline) ||
                other.onlineOffline == onlineOffline) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.planId, planId) || other.planId == planId) &&
            (identical(other.upgradedAt, upgradedAt) ||
                other.upgradedAt == upgradedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      accountNumber,
      onlineOffline,
      name,
      username,
      email,
      image,
      address,
      phone,
      balance,
      planId,
      upgradedAt);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@JsonKey(name: "id") final int id,
      @JsonKey(name: "account_number") final String accountNumber,
      @JsonKey(name: "online_offline") final String onlineOffline,
      @JsonKey(name: "name") final String name,
      @JsonKey(name: "username") final String username,
      @JsonKey(name: "email") final String email,
      @JsonKey(name: "image") final String image,
      @JsonKey(name: "address") final String address,
      @JsonKey(name: "phone") final String phone,
      @JsonKey(name: "balance") final double balance,
      @JsonKey(name: "plan_id") final int planId,
      @JsonKey(name: "upgraded_at") final String upgradedAt}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "account_number")
  String get accountNumber;
  @override
  @JsonKey(name: "online_offline")
  String get onlineOffline;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "username")
  String get username;
  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "image")
  String get image;
  @override
  @JsonKey(name: "address")
  String get address;
  @override
  @JsonKey(name: "phone")
  String get phone;
  @override
  @JsonKey(name: "balance")
  double get balance;
  @override
  @JsonKey(name: "plan_id")
  int get planId;
  @override
  @JsonKey(name: "upgraded_at")
  String get upgradedAt;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

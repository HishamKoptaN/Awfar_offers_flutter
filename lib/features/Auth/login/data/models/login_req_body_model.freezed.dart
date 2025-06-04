// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_req_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginReqBodyModel _$LoginReqBodyModelFromJson(Map<String, dynamic> json) {
  return _LoginReqBodyModel.fromJson(json);
}

/// @nodoc
mixin _$LoginReqBodyModel {
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: "googleToken")
  String? get googleToken => throw _privateConstructorUsedError;

  /// Serializes this LoginReqBodyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginReqBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginReqBodyModelCopyWith<LoginReqBodyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginReqBodyModelCopyWith<$Res> {
  factory $LoginReqBodyModelCopyWith(
          LoginReqBodyModel value, $Res Function(LoginReqBodyModel) then) =
      _$LoginReqBodyModelCopyWithImpl<$Res, LoginReqBodyModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "email") String? email,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "googleToken") String? googleToken});
}

/// @nodoc
class _$LoginReqBodyModelCopyWithImpl<$Res, $Val extends LoginReqBodyModel>
    implements $LoginReqBodyModelCopyWith<$Res> {
  _$LoginReqBodyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginReqBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? googleToken = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      googleToken: freezed == googleToken
          ? _value.googleToken
          : googleToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginReqBodyModelImplCopyWith<$Res>
    implements $LoginReqBodyModelCopyWith<$Res> {
  factory _$$LoginReqBodyModelImplCopyWith(_$LoginReqBodyModelImpl value,
          $Res Function(_$LoginReqBodyModelImpl) then) =
      __$$LoginReqBodyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "email") String? email,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "googleToken") String? googleToken});
}

/// @nodoc
class __$$LoginReqBodyModelImplCopyWithImpl<$Res>
    extends _$LoginReqBodyModelCopyWithImpl<$Res, _$LoginReqBodyModelImpl>
    implements _$$LoginReqBodyModelImplCopyWith<$Res> {
  __$$LoginReqBodyModelImplCopyWithImpl(_$LoginReqBodyModelImpl _value,
      $Res Function(_$LoginReqBodyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginReqBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? googleToken = freezed,
  }) {
    return _then(_$LoginReqBodyModelImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      googleToken: freezed == googleToken
          ? _value.googleToken
          : googleToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginReqBodyModelImpl implements _LoginReqBodyModel {
  const _$LoginReqBodyModelImpl(
      {@JsonKey(name: "email") this.email,
      @JsonKey(name: "password") this.password,
      @JsonKey(name: "googleToken") this.googleToken});

  factory _$LoginReqBodyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginReqBodyModelImplFromJson(json);

  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "password")
  final String? password;
  @override
  @JsonKey(name: "googleToken")
  final String? googleToken;

  @override
  String toString() {
    return 'LoginReqBodyModel(email: $email, password: $password, googleToken: $googleToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginReqBodyModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.googleToken, googleToken) ||
                other.googleToken == googleToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password, googleToken);

  /// Create a copy of LoginReqBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginReqBodyModelImplCopyWith<_$LoginReqBodyModelImpl> get copyWith =>
      __$$LoginReqBodyModelImplCopyWithImpl<_$LoginReqBodyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginReqBodyModelImplToJson(
      this,
    );
  }
}

abstract class _LoginReqBodyModel implements LoginReqBodyModel {
  const factory _LoginReqBodyModel(
          {@JsonKey(name: "email") final String? email,
          @JsonKey(name: "password") final String? password,
          @JsonKey(name: "googleToken") final String? googleToken}) =
      _$LoginReqBodyModelImpl;

  factory _LoginReqBodyModel.fromJson(Map<String, dynamic> json) =
      _$LoginReqBodyModelImpl.fromJson;

  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "password")
  String? get password;
  @override
  @JsonKey(name: "googleToken")
  String? get googleToken;

  /// Create a copy of LoginReqBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginReqBodyModelImplCopyWith<_$LoginReqBodyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

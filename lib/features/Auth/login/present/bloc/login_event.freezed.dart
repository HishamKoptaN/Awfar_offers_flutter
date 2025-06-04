// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginReqBodyModel loginReqBodyModel) login,
    required TResult Function(
            VerifyPhoneNumberReqBodyModel verifyPhoneNumberReqBodyModel)
        verifyPhoneNumber,
    required TResult Function(String otp) submitOTP,
    required TResult Function() signInAnonymously,
    required TResult Function() google,
    required TResult Function(ResetPassReqBodyModel resetPassReqBodyModel)
        resetPass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginReqBodyModel loginReqBodyModel)? login,
    TResult? Function(
            VerifyPhoneNumberReqBodyModel verifyPhoneNumberReqBodyModel)?
        verifyPhoneNumber,
    TResult? Function(String otp)? submitOTP,
    TResult? Function()? signInAnonymously,
    TResult? Function()? google,
    TResult? Function(ResetPassReqBodyModel resetPassReqBodyModel)? resetPass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginReqBodyModel loginReqBodyModel)? login,
    TResult Function(
            VerifyPhoneNumberReqBodyModel verifyPhoneNumberReqBodyModel)?
        verifyPhoneNumber,
    TResult Function(String otp)? submitOTP,
    TResult Function()? signInAnonymously,
    TResult Function()? google,
    TResult Function(ResetPassReqBodyModel resetPassReqBodyModel)? resetPass,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_SubmitOTP value) submitOTP,
    required TResult Function(_SignInAnonymously value) signInAnonymously,
    required TResult Function(_Google value) google,
    required TResult Function(_ResetPass value) resetPass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult? Function(_SubmitOTP value)? submitOTP,
    TResult? Function(_SignInAnonymously value)? signInAnonymously,
    TResult? Function(_Google value)? google,
    TResult? Function(_ResetPass value)? resetPass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_SubmitOTP value)? submitOTP,
    TResult Function(_SignInAnonymously value)? signInAnonymously,
    TResult Function(_Google value)? google,
    TResult Function(_ResetPass value)? resetPass,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginReqBodyModel loginReqBodyModel});

  $LoginReqBodyModelCopyWith<$Res> get loginReqBodyModel;
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginReqBodyModel = null,
  }) {
    return _then(_$LoginImpl(
      loginReqBodyModel: null == loginReqBodyModel
          ? _value.loginReqBodyModel
          : loginReqBodyModel // ignore: cast_nullable_to_non_nullable
              as LoginReqBodyModel,
    ));
  }

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginReqBodyModelCopyWith<$Res> get loginReqBodyModel {
    return $LoginReqBodyModelCopyWith<$Res>(_value.loginReqBodyModel, (value) {
      return _then(_value.copyWith(loginReqBodyModel: value));
    });
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl({required this.loginReqBodyModel});

  @override
  final LoginReqBodyModel loginReqBodyModel;

  @override
  String toString() {
    return 'LoginEvent.login(loginReqBodyModel: $loginReqBodyModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.loginReqBodyModel, loginReqBodyModel) ||
                other.loginReqBodyModel == loginReqBodyModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginReqBodyModel);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginReqBodyModel loginReqBodyModel) login,
    required TResult Function(
            VerifyPhoneNumberReqBodyModel verifyPhoneNumberReqBodyModel)
        verifyPhoneNumber,
    required TResult Function(String otp) submitOTP,
    required TResult Function() signInAnonymously,
    required TResult Function() google,
    required TResult Function(ResetPassReqBodyModel resetPassReqBodyModel)
        resetPass,
  }) {
    return login(loginReqBodyModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginReqBodyModel loginReqBodyModel)? login,
    TResult? Function(
            VerifyPhoneNumberReqBodyModel verifyPhoneNumberReqBodyModel)?
        verifyPhoneNumber,
    TResult? Function(String otp)? submitOTP,
    TResult? Function()? signInAnonymously,
    TResult? Function()? google,
    TResult? Function(ResetPassReqBodyModel resetPassReqBodyModel)? resetPass,
  }) {
    return login?.call(loginReqBodyModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginReqBodyModel loginReqBodyModel)? login,
    TResult Function(
            VerifyPhoneNumberReqBodyModel verifyPhoneNumberReqBodyModel)?
        verifyPhoneNumber,
    TResult Function(String otp)? submitOTP,
    TResult Function()? signInAnonymously,
    TResult Function()? google,
    TResult Function(ResetPassReqBodyModel resetPassReqBodyModel)? resetPass,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(loginReqBodyModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_SubmitOTP value) submitOTP,
    required TResult Function(_SignInAnonymously value) signInAnonymously,
    required TResult Function(_Google value) google,
    required TResult Function(_ResetPass value) resetPass,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult? Function(_SubmitOTP value)? submitOTP,
    TResult? Function(_SignInAnonymously value)? signInAnonymously,
    TResult? Function(_Google value)? google,
    TResult? Function(_ResetPass value)? resetPass,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_SubmitOTP value)? submitOTP,
    TResult Function(_SignInAnonymously value)? signInAnonymously,
    TResult Function(_Google value)? google,
    TResult Function(_ResetPass value)? resetPass,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements LoginEvent {
  const factory _Login({required final LoginReqBodyModel loginReqBodyModel}) =
      _$LoginImpl;

  LoginReqBodyModel get loginReqBodyModel;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyPhoneNumberImplCopyWith<$Res> {
  factory _$$VerifyPhoneNumberImplCopyWith(_$VerifyPhoneNumberImpl value,
          $Res Function(_$VerifyPhoneNumberImpl) then) =
      __$$VerifyPhoneNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VerifyPhoneNumberReqBodyModel verifyPhoneNumberReqBodyModel});

  $VerifyPhoneNumberReqBodyModelCopyWith<$Res>
      get verifyPhoneNumberReqBodyModel;
}

/// @nodoc
class __$$VerifyPhoneNumberImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$VerifyPhoneNumberImpl>
    implements _$$VerifyPhoneNumberImplCopyWith<$Res> {
  __$$VerifyPhoneNumberImplCopyWithImpl(_$VerifyPhoneNumberImpl _value,
      $Res Function(_$VerifyPhoneNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verifyPhoneNumberReqBodyModel = null,
  }) {
    return _then(_$VerifyPhoneNumberImpl(
      verifyPhoneNumberReqBodyModel: null == verifyPhoneNumberReqBodyModel
          ? _value.verifyPhoneNumberReqBodyModel
          : verifyPhoneNumberReqBodyModel // ignore: cast_nullable_to_non_nullable
              as VerifyPhoneNumberReqBodyModel,
    ));
  }

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VerifyPhoneNumberReqBodyModelCopyWith<$Res>
      get verifyPhoneNumberReqBodyModel {
    return $VerifyPhoneNumberReqBodyModelCopyWith<$Res>(
        _value.verifyPhoneNumberReqBodyModel, (value) {
      return _then(_value.copyWith(verifyPhoneNumberReqBodyModel: value));
    });
  }
}

/// @nodoc

class _$VerifyPhoneNumberImpl implements _VerifyPhoneNumber {
  const _$VerifyPhoneNumberImpl({required this.verifyPhoneNumberReqBodyModel});

  @override
  final VerifyPhoneNumberReqBodyModel verifyPhoneNumberReqBodyModel;

  @override
  String toString() {
    return 'LoginEvent.verifyPhoneNumber(verifyPhoneNumberReqBodyModel: $verifyPhoneNumberReqBodyModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyPhoneNumberImpl &&
            (identical(other.verifyPhoneNumberReqBodyModel,
                    verifyPhoneNumberReqBodyModel) ||
                other.verifyPhoneNumberReqBodyModel ==
                    verifyPhoneNumberReqBodyModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verifyPhoneNumberReqBodyModel);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyPhoneNumberImplCopyWith<_$VerifyPhoneNumberImpl> get copyWith =>
      __$$VerifyPhoneNumberImplCopyWithImpl<_$VerifyPhoneNumberImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginReqBodyModel loginReqBodyModel) login,
    required TResult Function(
            VerifyPhoneNumberReqBodyModel verifyPhoneNumberReqBodyModel)
        verifyPhoneNumber,
    required TResult Function(String otp) submitOTP,
    required TResult Function() signInAnonymously,
    required TResult Function() google,
    required TResult Function(ResetPassReqBodyModel resetPassReqBodyModel)
        resetPass,
  }) {
    return verifyPhoneNumber(verifyPhoneNumberReqBodyModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginReqBodyModel loginReqBodyModel)? login,
    TResult? Function(
            VerifyPhoneNumberReqBodyModel verifyPhoneNumberReqBodyModel)?
        verifyPhoneNumber,
    TResult? Function(String otp)? submitOTP,
    TResult? Function()? signInAnonymously,
    TResult? Function()? google,
    TResult? Function(ResetPassReqBodyModel resetPassReqBodyModel)? resetPass,
  }) {
    return verifyPhoneNumber?.call(verifyPhoneNumberReqBodyModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginReqBodyModel loginReqBodyModel)? login,
    TResult Function(
            VerifyPhoneNumberReqBodyModel verifyPhoneNumberReqBodyModel)?
        verifyPhoneNumber,
    TResult Function(String otp)? submitOTP,
    TResult Function()? signInAnonymously,
    TResult Function()? google,
    TResult Function(ResetPassReqBodyModel resetPassReqBodyModel)? resetPass,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumber != null) {
      return verifyPhoneNumber(verifyPhoneNumberReqBodyModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_SubmitOTP value) submitOTP,
    required TResult Function(_SignInAnonymously value) signInAnonymously,
    required TResult Function(_Google value) google,
    required TResult Function(_ResetPass value) resetPass,
  }) {
    return verifyPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult? Function(_SubmitOTP value)? submitOTP,
    TResult? Function(_SignInAnonymously value)? signInAnonymously,
    TResult? Function(_Google value)? google,
    TResult? Function(_ResetPass value)? resetPass,
  }) {
    return verifyPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_SubmitOTP value)? submitOTP,
    TResult Function(_SignInAnonymously value)? signInAnonymously,
    TResult Function(_Google value)? google,
    TResult Function(_ResetPass value)? resetPass,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumber != null) {
      return verifyPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _VerifyPhoneNumber implements LoginEvent {
  const factory _VerifyPhoneNumber(
      {required final VerifyPhoneNumberReqBodyModel
          verifyPhoneNumberReqBodyModel}) = _$VerifyPhoneNumberImpl;

  VerifyPhoneNumberReqBodyModel get verifyPhoneNumberReqBodyModel;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyPhoneNumberImplCopyWith<_$VerifyPhoneNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitOTPImplCopyWith<$Res> {
  factory _$$SubmitOTPImplCopyWith(
          _$SubmitOTPImpl value, $Res Function(_$SubmitOTPImpl) then) =
      __$$SubmitOTPImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class __$$SubmitOTPImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$SubmitOTPImpl>
    implements _$$SubmitOTPImplCopyWith<$Res> {
  __$$SubmitOTPImplCopyWithImpl(
      _$SubmitOTPImpl _value, $Res Function(_$SubmitOTPImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$SubmitOTPImpl(
      null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubmitOTPImpl implements _SubmitOTP {
  const _$SubmitOTPImpl(this.otp);

  @override
  final String otp;

  @override
  String toString() {
    return 'LoginEvent.submitOTP(otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitOTPImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitOTPImplCopyWith<_$SubmitOTPImpl> get copyWith =>
      __$$SubmitOTPImplCopyWithImpl<_$SubmitOTPImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginReqBodyModel loginReqBodyModel) login,
    required TResult Function(
            VerifyPhoneNumberReqBodyModel verifyPhoneNumberReqBodyModel)
        verifyPhoneNumber,
    required TResult Function(String otp) submitOTP,
    required TResult Function() signInAnonymously,
    required TResult Function() google,
    required TResult Function(ResetPassReqBodyModel resetPassReqBodyModel)
        resetPass,
  }) {
    return submitOTP(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginReqBodyModel loginReqBodyModel)? login,
    TResult? Function(
            VerifyPhoneNumberReqBodyModel verifyPhoneNumberReqBodyModel)?
        verifyPhoneNumber,
    TResult? Function(String otp)? submitOTP,
    TResult? Function()? signInAnonymously,
    TResult? Function()? google,
    TResult? Function(ResetPassReqBodyModel resetPassReqBodyModel)? resetPass,
  }) {
    return submitOTP?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginReqBodyModel loginReqBodyModel)? login,
    TResult Function(
            VerifyPhoneNumberReqBodyModel verifyPhoneNumberReqBodyModel)?
        verifyPhoneNumber,
    TResult Function(String otp)? submitOTP,
    TResult Function()? signInAnonymously,
    TResult Function()? google,
    TResult Function(ResetPassReqBodyModel resetPassReqBodyModel)? resetPass,
    required TResult orElse(),
  }) {
    if (submitOTP != null) {
      return submitOTP(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_SubmitOTP value) submitOTP,
    required TResult Function(_SignInAnonymously value) signInAnonymously,
    required TResult Function(_Google value) google,
    required TResult Function(_ResetPass value) resetPass,
  }) {
    return submitOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult? Function(_SubmitOTP value)? submitOTP,
    TResult? Function(_SignInAnonymously value)? signInAnonymously,
    TResult? Function(_Google value)? google,
    TResult? Function(_ResetPass value)? resetPass,
  }) {
    return submitOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_SubmitOTP value)? submitOTP,
    TResult Function(_SignInAnonymously value)? signInAnonymously,
    TResult Function(_Google value)? google,
    TResult Function(_ResetPass value)? resetPass,
    required TResult orElse(),
  }) {
    if (submitOTP != null) {
      return submitOTP(this);
    }
    return orElse();
  }
}

abstract class _SubmitOTP implements LoginEvent {
  const factory _SubmitOTP(final String otp) = _$SubmitOTPImpl;

  String get otp;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitOTPImplCopyWith<_$SubmitOTPImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInAnonymouslyImplCopyWith<$Res> {
  factory _$$SignInAnonymouslyImplCopyWith(_$SignInAnonymouslyImpl value,
          $Res Function(_$SignInAnonymouslyImpl) then) =
      __$$SignInAnonymouslyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInAnonymouslyImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$SignInAnonymouslyImpl>
    implements _$$SignInAnonymouslyImplCopyWith<$Res> {
  __$$SignInAnonymouslyImplCopyWithImpl(_$SignInAnonymouslyImpl _value,
      $Res Function(_$SignInAnonymouslyImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInAnonymouslyImpl implements _SignInAnonymously {
  const _$SignInAnonymouslyImpl();

  @override
  String toString() {
    return 'LoginEvent.signInAnonymously()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInAnonymouslyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginReqBodyModel loginReqBodyModel) login,
    required TResult Function(
            VerifyPhoneNumberReqBodyModel verifyPhoneNumberReqBodyModel)
        verifyPhoneNumber,
    required TResult Function(String otp) submitOTP,
    required TResult Function() signInAnonymously,
    required TResult Function() google,
    required TResult Function(ResetPassReqBodyModel resetPassReqBodyModel)
        resetPass,
  }) {
    return signInAnonymously();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginReqBodyModel loginReqBodyModel)? login,
    TResult? Function(
            VerifyPhoneNumberReqBodyModel verifyPhoneNumberReqBodyModel)?
        verifyPhoneNumber,
    TResult? Function(String otp)? submitOTP,
    TResult? Function()? signInAnonymously,
    TResult? Function()? google,
    TResult? Function(ResetPassReqBodyModel resetPassReqBodyModel)? resetPass,
  }) {
    return signInAnonymously?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginReqBodyModel loginReqBodyModel)? login,
    TResult Function(
            VerifyPhoneNumberReqBodyModel verifyPhoneNumberReqBodyModel)?
        verifyPhoneNumber,
    TResult Function(String otp)? submitOTP,
    TResult Function()? signInAnonymously,
    TResult Function()? google,
    TResult Function(ResetPassReqBodyModel resetPassReqBodyModel)? resetPass,
    required TResult orElse(),
  }) {
    if (signInAnonymously != null) {
      return signInAnonymously();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_SubmitOTP value) submitOTP,
    required TResult Function(_SignInAnonymously value) signInAnonymously,
    required TResult Function(_Google value) google,
    required TResult Function(_ResetPass value) resetPass,
  }) {
    return signInAnonymously(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult? Function(_SubmitOTP value)? submitOTP,
    TResult? Function(_SignInAnonymously value)? signInAnonymously,
    TResult? Function(_Google value)? google,
    TResult? Function(_ResetPass value)? resetPass,
  }) {
    return signInAnonymously?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_SubmitOTP value)? submitOTP,
    TResult Function(_SignInAnonymously value)? signInAnonymously,
    TResult Function(_Google value)? google,
    TResult Function(_ResetPass value)? resetPass,
    required TResult orElse(),
  }) {
    if (signInAnonymously != null) {
      return signInAnonymously(this);
    }
    return orElse();
  }
}

abstract class _SignInAnonymously implements LoginEvent {
  const factory _SignInAnonymously() = _$SignInAnonymouslyImpl;
}

/// @nodoc
abstract class _$$GoogleImplCopyWith<$Res> {
  factory _$$GoogleImplCopyWith(
          _$GoogleImpl value, $Res Function(_$GoogleImpl) then) =
      __$$GoogleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoogleImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$GoogleImpl>
    implements _$$GoogleImplCopyWith<$Res> {
  __$$GoogleImplCopyWithImpl(
      _$GoogleImpl _value, $Res Function(_$GoogleImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GoogleImpl implements _Google {
  const _$GoogleImpl();

  @override
  String toString() {
    return 'LoginEvent.google()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoogleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginReqBodyModel loginReqBodyModel) login,
    required TResult Function(
            VerifyPhoneNumberReqBodyModel verifyPhoneNumberReqBodyModel)
        verifyPhoneNumber,
    required TResult Function(String otp) submitOTP,
    required TResult Function() signInAnonymously,
    required TResult Function() google,
    required TResult Function(ResetPassReqBodyModel resetPassReqBodyModel)
        resetPass,
  }) {
    return google();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginReqBodyModel loginReqBodyModel)? login,
    TResult? Function(
            VerifyPhoneNumberReqBodyModel verifyPhoneNumberReqBodyModel)?
        verifyPhoneNumber,
    TResult? Function(String otp)? submitOTP,
    TResult? Function()? signInAnonymously,
    TResult? Function()? google,
    TResult? Function(ResetPassReqBodyModel resetPassReqBodyModel)? resetPass,
  }) {
    return google?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginReqBodyModel loginReqBodyModel)? login,
    TResult Function(
            VerifyPhoneNumberReqBodyModel verifyPhoneNumberReqBodyModel)?
        verifyPhoneNumber,
    TResult Function(String otp)? submitOTP,
    TResult Function()? signInAnonymously,
    TResult Function()? google,
    TResult Function(ResetPassReqBodyModel resetPassReqBodyModel)? resetPass,
    required TResult orElse(),
  }) {
    if (google != null) {
      return google();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_SubmitOTP value) submitOTP,
    required TResult Function(_SignInAnonymously value) signInAnonymously,
    required TResult Function(_Google value) google,
    required TResult Function(_ResetPass value) resetPass,
  }) {
    return google(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult? Function(_SubmitOTP value)? submitOTP,
    TResult? Function(_SignInAnonymously value)? signInAnonymously,
    TResult? Function(_Google value)? google,
    TResult? Function(_ResetPass value)? resetPass,
  }) {
    return google?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_SubmitOTP value)? submitOTP,
    TResult Function(_SignInAnonymously value)? signInAnonymously,
    TResult Function(_Google value)? google,
    TResult Function(_ResetPass value)? resetPass,
    required TResult orElse(),
  }) {
    if (google != null) {
      return google(this);
    }
    return orElse();
  }
}

abstract class _Google implements LoginEvent {
  const factory _Google() = _$GoogleImpl;
}

/// @nodoc
abstract class _$$ResetPassImplCopyWith<$Res> {
  factory _$$ResetPassImplCopyWith(
          _$ResetPassImpl value, $Res Function(_$ResetPassImpl) then) =
      __$$ResetPassImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResetPassReqBodyModel resetPassReqBodyModel});

  $ResetPassReqBodyModelCopyWith<$Res> get resetPassReqBodyModel;
}

/// @nodoc
class __$$ResetPassImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$ResetPassImpl>
    implements _$$ResetPassImplCopyWith<$Res> {
  __$$ResetPassImplCopyWithImpl(
      _$ResetPassImpl _value, $Res Function(_$ResetPassImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resetPassReqBodyModel = null,
  }) {
    return _then(_$ResetPassImpl(
      resetPassReqBodyModel: null == resetPassReqBodyModel
          ? _value.resetPassReqBodyModel
          : resetPassReqBodyModel // ignore: cast_nullable_to_non_nullable
              as ResetPassReqBodyModel,
    ));
  }

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResetPassReqBodyModelCopyWith<$Res> get resetPassReqBodyModel {
    return $ResetPassReqBodyModelCopyWith<$Res>(_value.resetPassReqBodyModel,
        (value) {
      return _then(_value.copyWith(resetPassReqBodyModel: value));
    });
  }
}

/// @nodoc

class _$ResetPassImpl implements _ResetPass {
  const _$ResetPassImpl({required this.resetPassReqBodyModel});

  @override
  final ResetPassReqBodyModel resetPassReqBodyModel;

  @override
  String toString() {
    return 'LoginEvent.resetPass(resetPassReqBodyModel: $resetPassReqBodyModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPassImpl &&
            (identical(other.resetPassReqBodyModel, resetPassReqBodyModel) ||
                other.resetPassReqBodyModel == resetPassReqBodyModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resetPassReqBodyModel);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPassImplCopyWith<_$ResetPassImpl> get copyWith =>
      __$$ResetPassImplCopyWithImpl<_$ResetPassImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginReqBodyModel loginReqBodyModel) login,
    required TResult Function(
            VerifyPhoneNumberReqBodyModel verifyPhoneNumberReqBodyModel)
        verifyPhoneNumber,
    required TResult Function(String otp) submitOTP,
    required TResult Function() signInAnonymously,
    required TResult Function() google,
    required TResult Function(ResetPassReqBodyModel resetPassReqBodyModel)
        resetPass,
  }) {
    return resetPass(resetPassReqBodyModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginReqBodyModel loginReqBodyModel)? login,
    TResult? Function(
            VerifyPhoneNumberReqBodyModel verifyPhoneNumberReqBodyModel)?
        verifyPhoneNumber,
    TResult? Function(String otp)? submitOTP,
    TResult? Function()? signInAnonymously,
    TResult? Function()? google,
    TResult? Function(ResetPassReqBodyModel resetPassReqBodyModel)? resetPass,
  }) {
    return resetPass?.call(resetPassReqBodyModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginReqBodyModel loginReqBodyModel)? login,
    TResult Function(
            VerifyPhoneNumberReqBodyModel verifyPhoneNumberReqBodyModel)?
        verifyPhoneNumber,
    TResult Function(String otp)? submitOTP,
    TResult Function()? signInAnonymously,
    TResult Function()? google,
    TResult Function(ResetPassReqBodyModel resetPassReqBodyModel)? resetPass,
    required TResult orElse(),
  }) {
    if (resetPass != null) {
      return resetPass(resetPassReqBodyModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_SubmitOTP value) submitOTP,
    required TResult Function(_SignInAnonymously value) signInAnonymously,
    required TResult Function(_Google value) google,
    required TResult Function(_ResetPass value) resetPass,
  }) {
    return resetPass(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult? Function(_SubmitOTP value)? submitOTP,
    TResult? Function(_SignInAnonymously value)? signInAnonymously,
    TResult? Function(_Google value)? google,
    TResult? Function(_ResetPass value)? resetPass,
  }) {
    return resetPass?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_SubmitOTP value)? submitOTP,
    TResult Function(_SignInAnonymously value)? signInAnonymously,
    TResult Function(_Google value)? google,
    TResult Function(_ResetPass value)? resetPass,
    required TResult orElse(),
  }) {
    if (resetPass != null) {
      return resetPass(this);
    }
    return orElse();
  }
}

abstract class _ResetPass implements LoginEvent {
  const factory _ResetPass(
          {required final ResetPassReqBodyModel resetPassReqBodyModel}) =
      _$ResetPassImpl;

  ResetPassReqBodyModel get resetPassReqBodyModel;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPassImplCopyWith<_$ResetPassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

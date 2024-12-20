// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_notifcations_data_req_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SaveNotifcationsDataReqBodyModel _$SaveNotifcationsDataReqBodyModelFromJson(
    Map<String, dynamic> json) {
  return _SaveNotifcationsDataReqBodyModel.fromJson(json);
}

/// @nodoc
mixin _$SaveNotifcationsDataReqBodyModel {
  @JsonKey(name: "device_id")
  String? get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: "governorate_id")
  int? get governorateId => throw _privateConstructorUsedError;
  @JsonKey(name: "fcm_token")
  String? get fcmToken => throw _privateConstructorUsedError;

  /// Serializes this SaveNotifcationsDataReqBodyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SaveNotifcationsDataReqBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SaveNotifcationsDataReqBodyModelCopyWith<SaveNotifcationsDataReqBodyModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveNotifcationsDataReqBodyModelCopyWith<$Res> {
  factory $SaveNotifcationsDataReqBodyModelCopyWith(
          SaveNotifcationsDataReqBodyModel value,
          $Res Function(SaveNotifcationsDataReqBodyModel) then) =
      _$SaveNotifcationsDataReqBodyModelCopyWithImpl<$Res,
          SaveNotifcationsDataReqBodyModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "device_id") String? deviceId,
      @JsonKey(name: "governorate_id") int? governorateId,
      @JsonKey(name: "fcm_token") String? fcmToken});
}

/// @nodoc
class _$SaveNotifcationsDataReqBodyModelCopyWithImpl<$Res,
        $Val extends SaveNotifcationsDataReqBodyModel>
    implements $SaveNotifcationsDataReqBodyModelCopyWith<$Res> {
  _$SaveNotifcationsDataReqBodyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SaveNotifcationsDataReqBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = freezed,
    Object? governorateId = freezed,
    Object? fcmToken = freezed,
  }) {
    return _then(_value.copyWith(
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      governorateId: freezed == governorateId
          ? _value.governorateId
          : governorateId // ignore: cast_nullable_to_non_nullable
              as int?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaveNotifcationsDataReqBodyModelImplCopyWith<$Res>
    implements $SaveNotifcationsDataReqBodyModelCopyWith<$Res> {
  factory _$$SaveNotifcationsDataReqBodyModelImplCopyWith(
          _$SaveNotifcationsDataReqBodyModelImpl value,
          $Res Function(_$SaveNotifcationsDataReqBodyModelImpl) then) =
      __$$SaveNotifcationsDataReqBodyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "device_id") String? deviceId,
      @JsonKey(name: "governorate_id") int? governorateId,
      @JsonKey(name: "fcm_token") String? fcmToken});
}

/// @nodoc
class __$$SaveNotifcationsDataReqBodyModelImplCopyWithImpl<$Res>
    extends _$SaveNotifcationsDataReqBodyModelCopyWithImpl<$Res,
        _$SaveNotifcationsDataReqBodyModelImpl>
    implements _$$SaveNotifcationsDataReqBodyModelImplCopyWith<$Res> {
  __$$SaveNotifcationsDataReqBodyModelImplCopyWithImpl(
      _$SaveNotifcationsDataReqBodyModelImpl _value,
      $Res Function(_$SaveNotifcationsDataReqBodyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaveNotifcationsDataReqBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = freezed,
    Object? governorateId = freezed,
    Object? fcmToken = freezed,
  }) {
    return _then(_$SaveNotifcationsDataReqBodyModelImpl(
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      governorateId: freezed == governorateId
          ? _value.governorateId
          : governorateId // ignore: cast_nullable_to_non_nullable
              as int?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveNotifcationsDataReqBodyModelImpl
    implements _SaveNotifcationsDataReqBodyModel {
  const _$SaveNotifcationsDataReqBodyModelImpl(
      {@JsonKey(name: "device_id") this.deviceId,
      @JsonKey(name: "governorate_id") this.governorateId,
      @JsonKey(name: "fcm_token") this.fcmToken});

  factory _$SaveNotifcationsDataReqBodyModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SaveNotifcationsDataReqBodyModelImplFromJson(json);

  @override
  @JsonKey(name: "device_id")
  final String? deviceId;
  @override
  @JsonKey(name: "governorate_id")
  final int? governorateId;
  @override
  @JsonKey(name: "fcm_token")
  final String? fcmToken;

  @override
  String toString() {
    return 'SaveNotifcationsDataReqBodyModel(deviceId: $deviceId, governorateId: $governorateId, fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveNotifcationsDataReqBodyModelImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.governorateId, governorateId) ||
                other.governorateId == governorateId) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, deviceId, governorateId, fcmToken);

  /// Create a copy of SaveNotifcationsDataReqBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveNotifcationsDataReqBodyModelImplCopyWith<
          _$SaveNotifcationsDataReqBodyModelImpl>
      get copyWith => __$$SaveNotifcationsDataReqBodyModelImplCopyWithImpl<
          _$SaveNotifcationsDataReqBodyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveNotifcationsDataReqBodyModelImplToJson(
      this,
    );
  }
}

abstract class _SaveNotifcationsDataReqBodyModel
    implements SaveNotifcationsDataReqBodyModel {
  const factory _SaveNotifcationsDataReqBodyModel(
          {@JsonKey(name: "device_id") final String? deviceId,
          @JsonKey(name: "governorate_id") final int? governorateId,
          @JsonKey(name: "fcm_token") final String? fcmToken}) =
      _$SaveNotifcationsDataReqBodyModelImpl;

  factory _SaveNotifcationsDataReqBodyModel.fromJson(
          Map<String, dynamic> json) =
      _$SaveNotifcationsDataReqBodyModelImpl.fromJson;

  @override
  @JsonKey(name: "device_id")
  String? get deviceId;
  @override
  @JsonKey(name: "governorate_id")
  int? get governorateId;
  @override
  @JsonKey(name: "fcm_token")
  String? get fcmToken;

  /// Create a copy of SaveNotifcationsDataReqBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveNotifcationsDataReqBodyModelImplCopyWith<
          _$SaveNotifcationsDataReqBodyModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

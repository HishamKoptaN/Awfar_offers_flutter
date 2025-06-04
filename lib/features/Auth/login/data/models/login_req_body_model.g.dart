// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_req_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginReqBodyModelImpl _$$LoginReqBodyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginReqBodyModelImpl(
      email: json['email'] as String?,
      password: json['password'] as String?,
      googleToken: json['googleToken'] as String?,
    );

Map<String, dynamic> _$$LoginReqBodyModelImplToJson(
        _$LoginReqBodyModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'googleToken': instance.googleToken,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpResponseModelImpl _$$SignUpResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SignUpResponseModelImpl(
      token: json['token'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SignUpResponseModelImplToJson(
        _$SignUpResponseModelImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
    };

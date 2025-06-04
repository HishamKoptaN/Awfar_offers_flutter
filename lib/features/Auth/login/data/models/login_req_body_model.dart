import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_req_body_model.freezed.dart';
part 'login_req_body_model.g.dart';

@freezed
class LoginReqBodyModel with _$LoginReqBodyModel {
  const factory LoginReqBodyModel({
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "password") String? password,
    @JsonKey(name: "googleToken") String? googleToken,
  }) = _LoginReqBodyModel;

  factory LoginReqBodyModel.fromJson(Map<String, dynamic> json) =>
      _$LoginReqBodyModelFromJson(json);
}

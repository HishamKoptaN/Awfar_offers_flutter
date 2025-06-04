import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/login_req_body_model.dart';
import '../../data/models/reset_pass_req_body_model.dart';
import '../../data/models/verify_phone_number_req_body_model.dart';
part 'login_event.freezed.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.login({
    required LoginReqBodyModel loginReqBodyModel,
  }) = _Login;
  const factory LoginEvent.verifyPhoneNumber({
    required VerifyPhoneNumberReqBodyModel verifyPhoneNumberReqBodyModel,
  }) = _VerifyPhoneNumber;
  const factory LoginEvent.submitOTP(String otp) = _SubmitOTP;
  const factory LoginEvent.signInAnonymously() = _SignInAnonymously;
  const factory LoginEvent.google() = _Google;
  const factory LoginEvent.resetPass({
    required ResetPassReqBodyModel resetPassReqBodyModel,
  }) = _ResetPass;
}

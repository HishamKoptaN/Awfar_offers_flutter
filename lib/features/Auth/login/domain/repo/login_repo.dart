import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../../../core/errors/firebase_failures.dart';
import '../../data/models/login_req_body_model.dart';
import '../../data/models/verify_phone_otp_req_body_model.dart';
import '../../data/models/verify_phone_number_req_body_model.dart';

abstract class LoginRepo {
  Future<Either<FirebaseFailure, UserCredential>> login({
    required LoginReqBodyModel loginReqBodyModel,
  });
  Future<Either<String, Unit>> loginAnonymously();
  Future<Either<FirebaseFailure, UserCredential>> loginWithGoogle();
  Future<Either<String, Unit>> verifyPhoneNumber({
    required VerifyPhoneNumberReqBodyModel verifyPhoneNumberReqBodyModel,
  });
  Future<Either<String, Unit>> verifyOtp({
    required VerifyPhoneOtpReqBodyModel verifyPhoneOtpReqBodyModel,
  });
  Future<Either<FirebaseFailure, Unit>> logOut();
}

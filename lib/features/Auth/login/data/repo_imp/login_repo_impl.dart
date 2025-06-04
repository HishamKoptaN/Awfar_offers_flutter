import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../../../../core/errors/exceptions.dart';
import '../../../../../core/errors/firebase_failures.dart';
import '../../../../../core/networking/network_info.dart';
import '../../domain/repo/login_repo.dart';
import '../data_sources/login_api.dart';
import '../models/login_req_body_model.dart';
import '../models/verify_phone_otp_req_body_model.dart';
import '../models/verify_phone_number_req_body_model.dart';

class LoginRepoImpl implements LoginRepo {
  final LoginRemDataSrc loginRemDataSrc;
  final NetworkInfo networkInfo;
  final FirebaseAuth firebaseAuth;
  LoginRepoImpl({
    required this.loginRemDataSrc,
    required this.networkInfo,
    required this.firebaseAuth,
  });
  @override
  Future<Either<FirebaseFailure, UserCredential>> login({
    required LoginReqBodyModel loginReqBodyModel,
  }) async {
    try {
      final userCredential = await loginRemDataSrc.login(
        loginReqBodyModel: loginReqBodyModel,
      );
      return Right(
        userCredential,
      );
    } on ExistedAccountException {
      return Left(
        ExistedAccountFailure(),
      );
    } on WrongPasswordException {
      return Left(
        WrongPasswordFailure(),
      );
    } on ServerException {
      return Left(
        ServerFailure(),
      );
    }
  }

  @override
  Future<Either<FirebaseFailure, UserCredential>> loginWithGoogle() async {
    try {
      final userCredential = await loginRemDataSrc.loginWithGoogle();
      return Right(
        userCredential,
      );
    } on ExistedAccountException {
      return Left(
        ExistedAccountFailure(),
      );
    } on WrongPasswordException {
      return Left(
        WrongPasswordFailure(),
      );
    } on ServerException {
      return Left(
        ServerFailure(),
      );
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> logOut() async {
    if (await networkInfo.isConnected) {
      try {
        GoogleSignIn googleSignIn = GoogleSignIn();
        await googleSignIn.signOut();
        await FirebaseAuth.instance.signOut();
        return const Right(unit);
      } catch (e) {
        return Left(ServerFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<String, Unit>> loginAnonymously() async {
    try {
      await firebaseAuth.signInAnonymously();
      return right(unit);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, Unit>> verifyPhoneNumber({
    required VerifyPhoneNumberReqBodyModel verifyPhoneNumberReqBodyModel,
  }) async {
    try {
      await firebaseAuth.verifyPhoneNumber(
        phoneNumber: verifyPhoneNumberReqBodyModel.phoneNumber!,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await firebaseAuth.signInWithCredential(credential);
        },
        verificationFailed: (FirebaseAuthException e) {
          throw e.message ?? "Verification failed";
        },
        codeSent: (String verificationId, int? resendToken) {},
        codeAutoRetrievalTimeout: (String verificationId) {},
        timeout: const Duration(
          seconds: 60,
        ),
      );
      return right(unit);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, Unit>> verifyOtp({
    required VerifyPhoneOtpReqBodyModel verifyPhoneOtpReqBodyModel,
  }) async {
    try {
      final credential = PhoneAuthProvider.credential(
        verificationId: verifyPhoneOtpReqBodyModel.verificationId ?? '',
        smsCode: verifyPhoneOtpReqBodyModel.otp ?? '',
      );
      await firebaseAuth.signInWithCredential(
        credential,
      );
      return right(unit);
    } catch (e) {
      return left(e.toString());
    }
  }
}

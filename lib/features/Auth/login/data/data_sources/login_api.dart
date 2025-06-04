import 'package:google_sign_in/google_sign_in.dart';
import '../../../../../core/errors/exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../models/login_req_body_model.dart';

abstract class LoginRemDataSrc {
  Future<UserCredential> login({
    required LoginReqBodyModel loginReqBodyModel,
  });

  Future<UserCredential> loginWithGoogle();

  Future<void> verifyPhoneNumber({
    required String phoneNumber,
    required PhoneVerificationCompleted verificationCompleted,
    required PhoneVerificationFailed verificationFailed,
    required PhoneCodeSent codeSent,
    required PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout,
  });

  Future<UserCredential> signInWithPhoneCredential(
      PhoneAuthCredential credential);
}

class LoginRemDataSrcImpl implements LoginRemDataSrc {
  final FirebaseAuth firebaseAuth;

  LoginRemDataSrcImpl({required this.firebaseAuth});

  /// تسجيل الدخول باستخدام البريد الإلكتروني وكلمة المرور
  @override
  Future<UserCredential> login({
    required LoginReqBodyModel loginReqBodyModel,
  }) async {
    try {
      await firebaseAuth.currentUser?.reload();
      return await firebaseAuth.signInWithEmailAndPassword(
        email: loginReqBodyModel.email ?? '',
        password: loginReqBodyModel.password ?? '',
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw ExistedAccountException();
      } else if (e.code == 'wrong-password') {
        throw WrongPasswordException();
      } else {
        throw ServerException();
      }
    } catch (_) {
      throw ServerException();
    }
  }

  /// تسجيل الدخول باستخدام Google
  @override
  Future<UserCredential> loginWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        throw UserCancelledException(); // المستخدم ألغى العملية
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      return await firebaseAuth.signInWithCredential(credential);
    } on FirebaseAuthException {
      throw ServerException();
    } catch (_) {
      throw ServerException();
    }
  }

  /// التحقق من رقم الهاتف
  @override
  Future<void> verifyPhoneNumber({
    required String phoneNumber,
    required PhoneVerificationCompleted verificationCompleted,
    required PhoneVerificationFailed verificationFailed,
    required PhoneCodeSent codeSent,
    required PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout,
  }) async {
    try {
      await firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: verificationCompleted,
        verificationFailed: verificationFailed,
        codeSent: codeSent,
        codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
      );
    } on FirebaseAuthException {
      throw ServerException();
    } catch (_) {
      throw ServerException();
    }
  }

  /// تسجيل الدخول باستخدام بيانات التحقق من الهاتف
  @override
  Future<UserCredential> signInWithPhoneCredential(
      PhoneAuthCredential credential) async {
    try {
      return await firebaseAuth.signInWithCredential(credential);
    } on FirebaseAuthException {
      throw ServerException();
    } catch (_) {
      throw ServerException();
    }
  }
}

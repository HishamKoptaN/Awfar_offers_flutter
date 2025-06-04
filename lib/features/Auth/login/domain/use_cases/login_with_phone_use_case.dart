import 'package:firebase_auth/firebase_auth.dart';
import '../../data/models/verify_phone_number_req_body_model.dart';
import '../../data/repo_imp/login_repo_impl.dart';
import 'package:dartz/dartz.dart';

class LoginWithPhoneUseCase {
  final LoginRepoImpl loginRepo;
  LoginWithPhoneUseCase({
    required this.loginRepo,
  });
  Future<Either<String, Unit>> phone({
    required VerifyPhoneNumberReqBodyModel verifyPhoneNumberReqBodyModel,
  }) async {
    return await loginRepo.verifyPhoneNumber(
      verifyPhoneNumberReqBodyModel: verifyPhoneNumberReqBodyModel,
    );
  }
}

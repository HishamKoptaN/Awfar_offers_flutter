import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../../../core/errors/firebase_failures.dart';
import '../../data/models/login_req_body_model.dart';
import '../../data/repo_imp/login_repo_impl.dart';

class LoginUseCase {
  final LoginRepoImpl loginRepo;
  LoginUseCase({
    required this.loginRepo,
  });

  Future<Either<FirebaseFailure, UserCredential>> login({
    required LoginReqBodyModel loginReqBodyModel,
  }) async {
    return await loginRepo.login(
      loginReqBodyModel: loginReqBodyModel,
    );
  }
}

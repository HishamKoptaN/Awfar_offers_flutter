import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../../../core/errors/firebase_failures.dart';
import '../../data/repo_imp/login_repo_impl.dart';

class LoginWithFacebookUseCase {
  final LoginRepoImpl loginRepo;
  LoginWithFacebookUseCase({
    required this.loginRepo,
  });
  Future<Either<FirebaseFailure, UserCredential>> facebook() async {
    return await loginRepo.loginWithGoogle();
  }
}

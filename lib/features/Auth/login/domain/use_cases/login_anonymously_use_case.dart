import 'package:dartz/dartz.dart';
import '../../data/models/login_req_body_model.dart';
import '../../data/repo_imp/login_repo_impl.dart';

class LoginAnonymouslyUseCase {
  final LoginRepoImpl loginRepo;
  LoginAnonymouslyUseCase({
    required this.loginRepo,
  });

  Future<Either<String, Unit>> login({
    required LoginReqBodyModel loginReqBodyModel,
  }) async {
    return await loginRepo.loginAnonymously();
  }
}

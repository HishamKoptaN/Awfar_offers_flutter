import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/errors/api_error_model.dart';
import '../../../../../core/errors/firebase_failures.dart';
import '../../data/models/login_req_body_model.dart';
import '../../domain/use_cases/login_anonymously_use_case.dart';
import '../../domain/use_cases/login_use_case.dart';
import '../../domain/use_cases/login_with_facebook_use_case.dart';
import '../../domain/use_cases/login_with_google_use_case.dart';
import '../../domain/use_cases/login_with_phone_use_case.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase loginUseCase;
  final LoginAnonymouslyUseCase loginAnonymouslyUseCase;
  final LoginWithGoogleUseCase loginWithGoogleUseCase;
  final LoginWithPhoneUseCase loginWithPhoneUseCase;
  final LoginWithFacebookUseCase loginWithFacebookUseCase;
  final FirebaseAuth firebaseAuth;

  LoginBloc({
    required this.loginUseCase,
    required this.loginAnonymouslyUseCase,
    required this.loginWithGoogleUseCase,
    required this.loginWithFacebookUseCase,
    required this.loginWithPhoneUseCase,
    required this.firebaseAuth,
  }) : super(const LoginState.initial()) {
    on<LoginEvent>(
      (event, emit) async {
        await event.when(
          login: (
            loginReqBodyModel,
          ) async {
            emit(
              const LoginState.loading(),
            );
            final result = await loginUseCase.login(
              loginReqBodyModel: loginReqBodyModel,
            );
            result.fold(
              (firebaseFailure) {
                emit(
                  LoginState.failure(
                    apiErrorModel: mapFailureToError(
                      firebaseFailure: firebaseFailure,
                    ),
                  ),
                );
              },
              (userCredential) {
                emit(
                  const LoginState.success(),
                );
              },
            );
          },
          signInAnonymously: () async {
            emit(
              const LoginState.loading(),
            );
            final result = await loginAnonymouslyUseCase.login(
              loginReqBodyModel: const LoginReqBodyModel(),
            );
            result.fold(
              (failure) =>
                  emit(LoginState.failure(apiErrorModel: ApiErrorModel())),
              (_) => emit(const LoginState.success()),
            );
          },
          google: () async {
            emit(
              const LoginState.loading(),
            );
            final result = await loginWithGoogleUseCase.loginWithGoogle();
            result.fold(
              (firebaseFailure) {
                emit(
                  LoginState.failure(
                    apiErrorModel: mapFailureToError(
                      firebaseFailure: firebaseFailure,
                    ),
                  ),
                );
              },
              (userCredential) {
                emit(
                  const LoginState.success(),
                );
              },
            );
          },
          resetPass: (
            resetPassReqBodyModel,
          ) async {
            emit(
              const LoginState.loading(),
            );
            try {
              await firebaseAuth.sendPasswordResetEmail(
                email: resetPassReqBodyModel.email ?? '',
              );
              emit(
                const LoginState.linkSent(),
              );
            } catch (e) {
              emit(
                LoginState.failure(
                  apiErrorModel: ApiErrorModel(
                    error: e.toString(),
                  ),
                ),
              );
            }
          },
          verifyPhoneNumber: (
            verifyPhoneNumberReqBodyModel,
          ) async {
            emit(
              const LoginState.loading(),
            );
            final result = await loginWithPhoneUseCase.phone(
              verifyPhoneNumberReqBodyModel: verifyPhoneNumberReqBodyModel,
            );
            result.fold(
              (failure) => emit(
                LoginState.failure(
                  apiErrorModel: ApiErrorModel(
                    error: failure.toString(),
                  ),
                ),
              ),
              (_) => emit(
                const LoginState.success(),
              ),
            );
          },
          submitOTP: (
            otpReqBodyModel,
          ) {},
        );
      },
    );
  }

  ApiErrorModel mapFailureToError({
    required FirebaseFailure firebaseFailure,
  }) {
    if (firebaseFailure is ExistedAccountFailure) {
      return ApiErrorModel(error: 'Account already exists');
    } else if (firebaseFailure is WrongPasswordFailure) {
      return ApiErrorModel(error: 'Incorrect password');
    } else if (firebaseFailure is OfflineFailure) {
      return ApiErrorModel(error: 'No internet connection');
    } else {
      return ApiErrorModel(error: 'Unknown error occurred');
    }
  }
}

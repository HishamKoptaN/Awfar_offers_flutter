import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/errors/api_error_model.dart';
import 'main_event.dart';
import 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  FirebaseAuth auth;
  MainBloc({
    required this.auth,
  }) : super(
          const MainState.loading(),
        ) {
    on<MainEvent>(
      (event, emit) async {
        await event.when(
          check: () async {
            emit(
              const MainState.loading(),
            );
            try {
              final user = auth.currentUser;
              if (user != null) {
                emit(
                  const MainState.logedIn(),
                );
              } else {
                emit(
                  const MainState.logedOut(),
                );
              }
            } catch (e) {
              emit(
                MainState.failure(
                  apiErrorModel: ApiErrorModel(
                    error: e.toString(),
                  ),
                ),
              );
            }
          },
        );
      },
    );
  }
}

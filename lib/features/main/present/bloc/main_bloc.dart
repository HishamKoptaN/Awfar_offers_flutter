import 'package:awfar_offer_app/core/global_methods.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/check_use_case.dart';
import 'main_event.dart';
import 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final CheckUseCase checkUseCase;

  MainBloc({
    required this.checkUseCase,
  }) : super(
          const MainState.loading(),
        ) {
    on<MainEvent>(
      (event, emit) async {
        await event.when(
          check: () async {
            await getCity().then(
              (id) async {
                if (id == null) {
                  emit(
                    const MainState.firstTime(),
                  );
                } else {
                  emit(
                    const MainState.logedIn(),
                  );
                }
              },
            );
          },
        );
      },
    );
  }
}
  //  String? token = await SharedPrefHelper.getSecuredString(
  //             key: SharedPrefKeys.userToken,
  //           );
  //           if (token == null || token.isEmpty) {
  //           } else if (token.isNotEmpty) {
  //             final result = await checkUseCase.check();
  //             await result!.when(
  //               success: (response) async {
  //                 emit(
  //                   const MainState.logedIn(),
  //                 );
  //               },
  //               failure: (error) async {
  //                 emit(
  //                   const MainState.logedOut(),
  //                 );
  //               },
  //             );
  //           }
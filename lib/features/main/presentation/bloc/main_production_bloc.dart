import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/database/cache/shared_pref_helper.dart';
import '../../../../core/database/cache/shared_pref_keys.dart';
import '../../domain/usecases/check_use_case.dart';
import 'main_production_event.dart';
import 'main_production_state.dart';

class MainProductionBloc
    extends Bloc<MainProductionEvent, MainProductionState> {
  final GetSettingsUseCase getSettingsUseCase;
  MainProductionBloc(
    this.getSettingsUseCase,
  ) : super(
          const MainProductionState.loading(),
        ) {
    on<MainProductionEvent>(
      (event, emit) async {
        await event.when(
          getSettingsEvent: () async {
            String? token = await SharedPrefHelper.getSecuredString(
              key: SharedPrefKeys.userToken,
            );
            if (token == null || token.isEmpty) {
              emit(const MainProductionState.logedOut());
            } else {
              final result = await getSettingsUseCase.getSettings();
              await result.when(
                success: (response) async {
                  emit(
                    const MainProductionState.logedIn(),
                  );
                },
                failure: (error) async {
                  emit(
                    const MainProductionState.logedOut(),
                  );
                },
              );
            }
          },
          checkEmailVerification: () {},
        );
      },
    );
  }
}

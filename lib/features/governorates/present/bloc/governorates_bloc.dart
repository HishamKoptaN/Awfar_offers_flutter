import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/global_methods.dart';
import '../../domain/use_cases/get_governorates_use_case.dart';
import 'governorates_event.dart';
import 'governorates_state.dart';

class GovernoratesBloc extends Bloc<GovernoratesEvent, GovernoratesState> {
  final GetGovernoratesUseCase getGovernoratesUseCase;
  GovernoratesBloc({
    required this.getGovernoratesUseCase,
  }) : super(
          const GovernoratesState.initial(),
        ) {
    on<GovernoratesEvent>(
      (event, emit) async {
        await event.when(
          getGvernorates: () async {
            final result = await getGovernoratesUseCase.getGovernorates();
            await result.when(
              success: (response) async {
                int? selectedGovernorateId;
                await getGovernorate().then(
                  (dovernorateId) {
                    selectedGovernorateId = dovernorateId;
                  },
                );
                emit(
                  GovernoratesState.governoratesloaded(
                    countries: response,
                    selectedGovernorateId: selectedGovernorateId,
                  ),
                );
              },
              failure: (error) async {
                emit(
                  GovernoratesState.failure(
                    error: error.error!,
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}

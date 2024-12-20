import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/singletons/markas_singleton.dart';
import '../../domain/use_cases/get_items_use_case.dart';
import 'markas_event.dart';
import 'markas_state.dart';

class MarkasBloc extends Bloc<MarkasEvent, MarkasState> {
  final GetMarkasUseCase getMarkasUseCase;
  MarkasBloc({
    required this.getMarkasUseCase,
  }) : super(
          const MarkasState.loading(),
        ) {
    on<MarkasEvent>(
      (event, emit) async {
        await event.when(
          getMarkas: (subCategoryId) async {
            final result = await getMarkasUseCase.getMarkas(
              subCategoryId: subCategoryId,
            );
            await result.when(
              success: (response) async {
                MarkasSingleton.instance.markas = response!;
                emit(
                  const MarkasState.loaded(),
                );
              },
              failure: (error) async {
                emit(
                  MarkasState.failure(
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

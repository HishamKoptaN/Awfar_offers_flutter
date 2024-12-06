import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/singletons/categories_singleton.dart';
import '../../domain/use_cases/categories_use_case.dart';
import 'categories_event.dart';
import 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final GetCategoriesUseCase getCategoriesUseCase;
  CategoriesBloc({
    required this.getCategoriesUseCase,
  }) : super(
          const CategoriesState.loading(),
        ) {
    on<CategoriesEvent>(
      (event, emit) async {
        await event.when(
          getCategories: (governorateId) async {
            emit(
              const CategoriesState.loading(),
            );
            final result = await getCategoriesUseCase.getCategories(
              governorateId: governorateId,
            );
            await result.when(
              success: (response) async {
                CategoriesSingleton.instance.categories = response!;
                emit(
                  const CategoriesState.loaded(),
                );
              },
              failure: (error) async {
                emit(
                  CategoriesState.failure(
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

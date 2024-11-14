import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/use_cases/categories_use_case.dart';
import 'categories_event.dart';
import 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final GetCategoriesUseCase getCategoriesUseCase;
  CategoriesBloc(
    this.getCategoriesUseCase,
  ) : super(
          const CategoriesState.loading(),
        ) {
    on<CategoriesEvent>(
      (event, emit) async {
        await event.when(
          getCategoriesEvent: () async {
            final result = await getCategoriesUseCase.getCategories();
            await result.when(
              success: (response) async {
                emit(
                  CategoriesState.categoriesloaded(
                    categories: response,
                  ),
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

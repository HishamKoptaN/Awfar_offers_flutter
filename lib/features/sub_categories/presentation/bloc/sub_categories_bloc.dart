import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/singletons/sub_categories_singleton.dart';
import '../../domain/use_cases/get_sub_categories_use_case.dart';
import 'sub_categories_event.dart';
import 'sub_categories_state.dart';

class SubCategoriesBloc extends Bloc<SubCategoriesEvent, SubCategoriesState> {
  final GetSubCategoriesUseCase getSubCategoriesUseCase;
  SubCategoriesBloc({
    required this.getSubCategoriesUseCase,
  }) : super(
          const SubCategoriesState.loading(),
        ) {
    on<SubCategoriesEvent>(
      (event, emit) async {
        await event.when(
          getSubCategoriesEvent: () async {
            final result = await getSubCategoriesUseCase.getCategories();
            await result.when(
              success: (response) async {
                SubCategoriesSingleton.instance.subCategories = response!;
                emit(
                  const SubCategoriesState.loaded(),
                );
              },
              failure: (error) async {
                emit(
                  SubCategoriesState.failure(
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

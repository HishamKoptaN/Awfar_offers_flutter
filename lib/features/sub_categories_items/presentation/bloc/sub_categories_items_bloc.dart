import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/singletons/sub_categories_items_singleton.dart';
import '../../domain/use_cases/get_sub_categories_items_use_case.dart';
import 'sub_categories_items_event.dart';
import 'sub_categories_state.dart';

class SubCategoriesItemsBloc
    extends Bloc<SubCategoriesItemsEvent, SubCategoriesItemsState> {
  final GetSubCategoriesItemsUseCase getSubCategoriesItemsUseCase;
  SubCategoriesItemsBloc({
    required this.getSubCategoriesItemsUseCase,
  }) : super(
          const SubCategoriesItemsState.loading(),
        ) {
    on<SubCategoriesItemsEvent>(
      (event, emit) async {
        await event.when(
          getSubCategoriesItems: (subCategoryId) async {
            final result =
                await getSubCategoriesItemsUseCase.getSubCategoriesItems(
              subCategoryId: subCategoryId,
            );
            await result.when(
              success: (response) async {
                SubCategoriesItemsSingleton.instance.subCategoriesitems =
                    response!;
                emit(
                  const SubCategoriesItemsState.loaded(),
                );
              },
              failure: (error) async {
                emit(
                  SubCategoriesItemsState.failure(
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

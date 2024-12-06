import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/singletons/products_singleton.dart';
import '../../domain/use_cases/get_products_use_case.dart';
import 'products_event.dart';
import 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final GetProductsUseCase getProductsUseCase;
  ProductsBloc({
    required this.getProductsUseCase,
  }) : super(
          const ProductsState.loading(),
        ) {
    on<ProductsEvent>(
      (event, emit) async {
        await event.when(
          getProducts: (subCategoryId) async {
            final result = await getProductsUseCase.getProducts(
              subCategoryId: subCategoryId,
            );
            await result.when(
              success: (response) async {
                ProductsSingleton.instance.prdoucts = response!;
                emit(
                  const ProductsState.loaded(),
                );
              },
              failure: (error) async {
                emit(
                  ProductsState.failure(
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

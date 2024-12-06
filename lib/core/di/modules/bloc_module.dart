import '../../../features/categories/presentation/bloc/categories_bloc.dart';
import '../../../features/countries/presentation/bloc/countries_bloc.dart';
import '../../../features/coupons/present/bloc/coupons_bloc.dart';
import '../../../features/governorates/present/bloc/governorates_bloc.dart';
import '../../../features/main/presentation/bloc/main_bloc.dart';
import '../../../features/notifications/present/bloc/notifications_bloc.dart';
import '../../../features/offers/presentation/bloc/offers_bloc.dart';
import '../../../features/products/presentation/bloc/products_bloc.dart';
import '../../../features/stores/presentation/bloc/stores_bloc.dart';
import '../../../features/sub_categories/presentation/bloc/sub_categories_bloc.dart';
import '../../../features/sub_categories_items/presentation/bloc/sub_categories_items_bloc.dart';
import '../dependency_injection.dart';

class BlocModule extends DIModule {
  @override
  Future<void> provides() async {
    getIt
      ..registerLazySingleton<MainBloc>(
        () => MainBloc(
          checkUseCase: getIt(),
        ),
      )
      ..registerLazySingleton<CountriesBloc>(
        () => CountriesBloc(
          getCountriesUseCase: getIt(),
        ),
      )
      ..registerLazySingleton<GovernoratesBloc>(
        () => GovernoratesBloc(
          getGovernoratesUseCase: getIt(),
        ),
      )
      ..registerLazySingleton<OffersBloc>(
        () => OffersBloc(
          getOffersUseCase: getIt(),
        ),
      )
      ..registerLazySingleton<StoresBloc>(
        () => StoresBloc(
          getStoresUseCase: getIt(),
        ),
      )
      ..registerLazySingleton<CategoriesBloc>(
        () => CategoriesBloc(
          getCategoriesUseCase: getIt(),
        ),
      )
      ..registerLazySingleton<SubCategoriesBloc>(
        () => SubCategoriesBloc(
          getSubCategoriesUseCase: getIt(),
        ),
      )
      ..registerLazySingleton<SubCategoriesItemsBloc>(
        () => SubCategoriesItemsBloc(
          getSubCategoriesItemsUseCase: getIt(),
        ),
      )
      ..registerLazySingleton<ProductsBloc>(
        () => ProductsBloc(
          getProductsUseCase: getIt(),
        ),
      )
      ..registerLazySingleton<CouponsBloc>(
        () => CouponsBloc(
          getCouponsUseCase: getIt(),
        ),
      )
      ..registerLazySingleton<NotificationsBloc>(
        () => NotificationsBloc(
          getNotificationsUseCase: getIt(),
        ),
      );
  }
}

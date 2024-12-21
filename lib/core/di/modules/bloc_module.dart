import '../../../features/Auth/login/presentation/bloc/login_bloc.dart';
import '../../../features/categories/present/bloc/categories_bloc.dart';
import '../../../features/countries/present/bloc/countries_bloc.dart';
import '../../../features/coupons/present/bloc/coupons_bloc.dart';
import '../../../features/external_notifications/present/bloc/external_notifications_bloc.dart';
import '../../../features/cities/present/bloc/cities_bloc.dart';
import '../../../features/main/present/bloc/main_bloc.dart';
import '../../../features/notifications/present/bloc/notifications_bloc.dart';
import '../../../features/offers/present/bloc/offers_bloc.dart';
import '../../../features/products/presentation/bloc/products_bloc.dart';
import '../../../features/stores/present/bloc/stores_bloc.dart';
import '../../../features/sub_categories/presentation/bloc/sub_categories_bloc.dart';
import '../../../features/markas/presentation/bloc/markas_bloc.dart';
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
      ..registerLazySingleton<LoginBloc>(
        () => LoginBloc(
          getIt(),
        ),
      )
      ..registerLazySingleton<CountriesBloc>(
        () => CountriesBloc(
          getCountriesUseCase: getIt(),
        ),
      )
      ..registerLazySingleton<CitiesBloc>(
        () => CitiesBloc(
          getCitiesUseCase: getIt(),
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
      ..registerLazySingleton<MarkasBloc>(
        () => MarkasBloc(
          getMarkasUseCase: getIt(),
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
      )
      ..registerLazySingleton<ExternalNotificationsBloc>(
        () => ExternalNotificationsBloc(
          saveNotificationsDataUseCase: getIt(),
        ),
      );
  }
}

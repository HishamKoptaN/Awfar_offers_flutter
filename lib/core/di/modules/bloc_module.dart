import '../../../features/Auth/login/present/bloc/login_bloc.dart';
import '../../../features/auth/sign_up/present/bloc/sign_up_bloc.dart';
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
          auth: getIt(),
        ),
      )
      //! test
      ..registerLazySingleton<LoginBloc>(
        () => LoginBloc(
          loginUseCase: getIt(),
          loginWithGoogleUseCase: getIt(),
          loginWithFacebookUseCase: getIt(),
          loginWithPhoneUseCase: getIt(),
          firebaseAuth: getIt(),
          loginAnonymouslyUseCase: getIt(),
        ),
      )
      //! test
      ..registerLazySingleton<SignUpBloc>(
        () => SignUpBloc(
          signUpUseCase: getIt(),
        ),
      )
      //! test
      ..registerLazySingleton<CountriesBloc>(
        () => CountriesBloc(
          getCountriesUseCase: getIt(),
        ),
      )
      //! test
      ..registerLazySingleton<CitiesBloc>(
        () => CitiesBloc(
          getCitiesUseCase: getIt(),
        ),
      )
      //! test
      ..registerLazySingleton<OffersBloc>(
        () => OffersBloc(
          getOffersUseCase: getIt(),
        ),
      )
      //! test
      ..registerLazySingleton<StoresBloc>(
        () => StoresBloc(
          getStoresUseCase: getIt(),
        ),
      )
      //! test
      ..registerLazySingleton<CategoriesBloc>(
        () => CategoriesBloc(
          getCategoriesUseCase: getIt(),
        ),
      )
      //! test
      ..registerLazySingleton<SubCategoriesBloc>(
        () => SubCategoriesBloc(
          getSubCategoriesUseCase: getIt(),
        ),
      )
      //! test
      ..registerLazySingleton<MarkasBloc>(
        () => MarkasBloc(
          getMarkasUseCase: getIt(),
        ),
      )
      //! test
      ..registerLazySingleton<ProductsBloc>(
        () => ProductsBloc(
          getProductsUseCase: getIt(),
        ),
      )
      //! test
      ..registerLazySingleton<CouponsBloc>(
        () => CouponsBloc(
          getCouponsUseCase: getIt(),
        ),
      )
      //! test
      ..registerLazySingleton<NotificationsBloc>(
        () => NotificationsBloc(
          getNotificationsUseCase: getIt(),
        ),
      )
      //! test
      ..registerLazySingleton<ExternalNotificationsBloc>(
        () => ExternalNotificationsBloc(
          saveNotificationsDataUseCase: getIt(),
        ),
      );
  }
}

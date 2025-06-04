import 'package:firebase_auth/firebase_auth.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import '../../../features/auth/login/data/data_sources/login_api.dart';
import '../../../features/auth/reset_password/data/data_sources/api/reset_pass_api.dart';
import '../../../features/auth/sign_up/data/data_sources/sign_up_api.dart';
import '../../../features/categories/data/data_sources/categories_api.dart';
import '../../../features/countries/data/data_sources/countries_api.dart';
import '../../../features/coupons/data/data_sources/coupons_api.dart';
import '../../../features/external_notifications/data/datasources/external_notifications_api.dart';
import '../../../features/cities/data/data_sources/cities_api.dart';
import '../../../features/main/data/datasources/main_api.dart';
import '../../../features/notifications/data/datasources/notifications_api.dart';
import '../../../features/offers/data/data_sources/offers_api.dart';
import '../../../features/products/data/data_sources/products_api.dart';
import '../../../features/stores/data/data_sources/stores_api.dart';
import '../../../features/sub_categories/data/data_sources/sub_categories_api.dart';
import '../../../features/markas/data/data_sources/markas_api.dart';
import '../../networking/dio_factory.dart';
import '../../networking/network_info.dart';
import '../dependency_injection.dart';

class ApiModule extends DIModule {
  @override
  Future<void> provides() async {
    final dio = await DioFactory.setupDio();
    getIt
      //! dio
      ..registerSingleton(
        dio,
      )
      ..registerLazySingleton<FirebaseAuth>(
        () => FirebaseAuth.instance,
      )
      //! MainApi
      ..registerLazySingleton<MainApi>(
        () => MainApi(
          getIt(),
        ),
      )
      //! InternetConnection
      ..registerLazySingleton<NetworkInfo>(
        () => NetworkInfoImpl(
          connectionChecker: getIt(),
        ),
      )
      //! InternetConnection
      ..registerLazySingleton(
        () => InternetConnection(),
      )
      //! LoginRemDataSrc
      ..registerLazySingleton<LoginRemDataSrc>(
        () => LoginRemDataSrcImpl(
          firebaseAuth: getIt(),
        ),
      )
      //! SignUpApi
      ..registerLazySingleton(
        () => SignUpApi(
          getIt(),
        ),
      )
      //! CountriesApi
      ..registerLazySingleton<CountriesApi>(
        () => CountriesApi(
          getIt(),
        ),
      )
      ..registerLazySingleton<CitiesApi>(
        () => CitiesApi(
          getIt(),
        ),
      )
      ..registerLazySingleton<OffersApi>(
        () => OffersApi(
          getIt(),
        ),
      )
      //! test
      ..registerLazySingleton<StoresApi>(
        () => StoresApi(
          getIt(),
        ),
      )
      ..registerLazySingleton<CategoriesApi>(
        () => CategoriesApi(
          getIt(),
        ),
      )
      ..registerLazySingleton<SubCategoriesApi>(
        () => SubCategoriesApi(
          getIt(),
        ),
      )
      ..registerLazySingleton<MarkasApi>(
        () => MarkasApi(
          getIt(),
        ),
      )
      //! test
      ..registerLazySingleton<ProductsApi>(
        () => ProductsApi(
          getIt(),
        ),
      )
      ..registerLazySingleton<CouponsApi>(
        () => CouponsApi(
          getIt(),
        ),
      )
      //! test
      ..registerLazySingleton<NotificationsApi>(
        () => NotificationsApi(
          getIt(),
        ),
      )
      ..registerLazySingleton<ExternalNotificationsApi>(
        () => ExternalNotificationsApi(
          getIt(),
        ),
      );
  }
}

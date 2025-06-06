import '../../../features/auth/login/data/repo_imp/login_repo_impl.dart';
import '../../../features/auth/login/domain/repo/login_repo.dart';
import '../../../features/categories/data/repo_impl/categories_repo_impl.dart';
import '../../../features/categories/domain/repo/categories_repo.dart';
import '../../../features/countries/data/repo_impl/countries_repo_impl.dart';
import '../../../features/countries/domain/repo/countries_repo.dart';
import '../../../features/coupons/data/repos/coupons_repo.dart';
import '../../../features/coupons/domain/repo_impl/coupons_repo_impl.dart';
import '../../../features/external_notifications/data/repo/external_notifications_repo.dart';
import '../../../features/external_notifications/domain/repo_imp/external_notifications_repo_impl.dart';
import '../../../features/cities/data/repo_impl/cities_repo_impl.dart';
import '../../../features/cities/domain/repo/cities_repo.dart';
import '../../../features/main/data/repo_impl/main_repo_impl.dart';
import '../../../features/main/domain/repo/main_repo.dart';
import '../../../features/notifications/data/repo/notifications_repo.dart';
import '../../../features/notifications/domain/repo_imp/notifications_repo_impl.dart';
import '../../../features/offers/data/repo_impl/offers_repo_impl.dart';
import '../../../features/offers/domain/repo/offers_repo.dart';
import '../../../features/products/data/repo_impl/products_repo_impl.dart';
import '../../../features/products/domain/repo/products_repo.dart';
import '../../../features/stores/data/repo_impl/stores_repo_impl.dart';
import '../../../features/stores/domain/repo/stores_repo.dart';
import '../../../features/sub_categories/data/repo_impl/sub_categories_repo_impl.dart';
import '../../../features/sub_categories/domain/repo/sub_categories_repo.dart';
import '../../../features/markas/data/repo_impl/markas_repo_impl.dart';
import '../../../features/markas/domain/repo/markas_repo.dart';
import '../dependency_injection.dart';

class RepositoryModule extends DIModule {
  @override
  Future<void> provides() async {
    getIt
      ..registerLazySingleton<MainRepo>(
        () => MainRepoImpl(
          mainApi: getIt(),
        ),
      )
      //! Login
      ..registerLazySingleton<LoginRepo>(
        () => LoginRepoImpl(
          networkInfo: getIt(),
          loginRemDataSrc: getIt(),
          firebaseAuth: getIt(),
        ),
      )
      ..registerLazySingleton<LoginRepoImpl>(
        () => LoginRepoImpl(
          networkInfo: getIt(),
          loginRemDataSrc: getIt(),
          firebaseAuth: getIt(),
        ),
      )
      //! Countries
      ..registerLazySingleton<CountriesRepo>(
        () => CountriesRepoImpl(
          countriesApi: getIt(),
        ),
      )
      ..registerLazySingleton<CitiesRepo>(
        () => CitiesRepoImpl(
          citiesApi: getIt(),
        ),
      )
      //! test
      ..registerLazySingleton<OffersRepo>(
        () => OffersRepoImpl(
          offersApi: getIt(),
        ),
      )
      ..registerLazySingleton<StoresRepo>(
        () => StoresRepoImpl(
          storesApi: getIt(),
        ),
      )
      ..registerLazySingleton<CategoriesRepo>(
        () => CategoriesRepoImpl(
          categoriesApi: getIt(),
        ),
      )
      ..registerLazySingleton<SubCategoriesRepo>(
        () => SubCategoriesRepoImpl(
          subcategoriesApi: getIt(),
        ),
      )
      //! test
      ..registerLazySingleton<MarkasRepo>(
        () => MarkasRepoImpl(
          markasApi: getIt(),
        ),
      )
      ..registerLazySingleton<ProductsRepo>(
        () => ProductsRepoImpl(
          productsApi: getIt(),
        ),
      )
      ..registerLazySingleton<CouponsRepo>(
        () => CouponsRepoImpl(
          couponsApi: getIt(),
        ),
      )
      //! test
      ..registerLazySingleton<NotificationsRepo>(
        () => NotificationsRepoImpl(
          notificationsApi: getIt(),
        ),
      )
      ..registerLazySingleton<NotificationsRepoImpl>(
        () => NotificationsRepoImpl(
          notificationsApi: getIt(),
        ),
      )
      ..registerLazySingleton<ExternalNotificationsRepo>(
        () => ExternalNotificationsRepoImpl(
          externalnotificationsApi: getIt(),
        ),
      );
  }
}

import '../../../features/categories/data/repo_impl/categories_repo_impl.dart';
import '../../../features/categories/domain/repo/categories_repo.dart';
import '../../../features/countries/data/repo_impl/countries_repo_impl.dart';
import '../../../features/countries/domain/repo/countries_repo.dart';
import '../../../features/coupons/data/repos/coupons_repo.dart';
import '../../../features/coupons/domain/repo_impl/coupons_repo_impl.dart';
import '../../../features/governorates/data/repo_impl/governorates_repo_impl.dart';
import '../../../features/governorates/domain/repo/governorates_repo.dart';
import '../../../features/notifications/data/repo/notifications_repo.dart';
import '../../../features/notifications/domain/repo_imp/notifications_repo_impl.dart';
import '../../../features/offers/data/repo_impl/offers_repo_impl.dart';
import '../../../features/offers/domain/repo/offers_repo.dart';
import '../dependency_injection.dart';

class RepositoryModule extends DIModule {
  @override
  Future<void> provides() async {
    getIt
      ..registerLazySingleton<CountriesRepo>(
        () => CountriesRepoImpl(
          countriesApi: getIt(),
        ),
      )
      ..registerLazySingleton<GovernoratesRepo>(
        () => GovernoratesRepoImpl(
          governoratesApi: getIt(),
        ),
      )
      ..registerLazySingleton<OffersRepo>(
        () => OffersRepoImpl(
          offersApi: getIt(),
        ),
      )
      ..registerLazySingleton<CategoriesRepo>(
        () => CategoriesRepoImpl(
          categoriesApi: getIt(),
        ),
      )
      ..registerLazySingleton<CouponsRepo>(
        () => CouponsRepoImpl(
          couponsApi: getIt(),
        ),
      )
      ..registerLazySingleton<NotificationsRepo>(
        () => NotificationsRepoImpl(
          notificationsApi: getIt(),
        ),
      )
      ..registerLazySingleton<NotificationsRepoImpl>(
        () => NotificationsRepoImpl(
          notificationsApi: getIt(),
        ),
      );
  }
}

import '../../../features/Auth/login/data/repo_imp/login_repo_impl.dart';
import '../../../features/Auth/login/domain/repo/login_repo.dart';
import '../../../features/categories/data/repo_impl/categories_repo_impl.dart';
import '../../../features/categories/domain/repo/categories_repo.dart';
import '../../../features/countries/data/repo_impl/countries_repo_impl.dart';
import '../../../features/countries/domain/repo/countries_repo.dart';
import '../../../features/coupons/data/repos/coupons_repo.dart';
import '../../../features/coupons/domain/repo_impl/coupons_repo_impl.dart';
import '../../../features/governorates/data/repo_impl/governorates_repo_impl.dart';
import '../../../features/governorates/domain/repo/governorates_repo.dart';
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
import '../../../features/sub_categories_items/data/repo_impl/sub_categories_items_repo_impl.dart';
import '../../../features/sub_categories_items/domain/repo/sub_categories_items_repo.dart';
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
      ..registerLazySingleton<LoginRepo>(
        () => LoginRepoImpl(
          getIt(),
        ),
      )
      ..registerLazySingleton<LoginRepoImpl>(
        () => LoginRepoImpl(
          getIt(),
        ),
      )
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
      ..registerLazySingleton<SubCategoriesItemsRepo>(
        () => SubCategoriesItemsRepoImpl(
          subcategoriesItemsApi: getIt(),
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

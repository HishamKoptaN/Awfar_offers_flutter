import '../../../features/Auth/login/domain/use_cases/login_use_case.dart';
import '../../../features/categories/domain/use_cases/categories_use_case.dart';
import '../../../features/countries/domain/use_cases/get_countries_use_case.dart';
import '../../../features/coupons/domain/use_cases/get_coupons_use_case.dart';
import '../../../features/governorates/domain/use_cases/get_governorates_use_case.dart';
import '../../../features/main/domain/usecases/check_use_case.dart';
import '../../../features/external_notifications/domain/use_cases/save_notifications_data_use_case.dart';
import '../../../features/notifications/domain/use_cases/get_notifications_use_case.dart';
import '../../../features/offers/domain/use_cases/get_offers_use_case.dart';
import '../../../features/products/domain/use_cases/get_products_use_case.dart';
import '../../../features/stores/domain/use_cases/get_stores_use_case.dart';
import '../../../features/sub_categories/domain/use_cases/get_sub_categories_use_case.dart';
import '../../../features/markas/domain/use_cases/get_items_use_case.dart';
import '../dependency_injection.dart';

class UseCaseModule extends DIModule {
  @override
  Future<void> provides() async {
    getIt
      ..registerLazySingleton(
        () => CheckUseCase(
          mainRepo: getIt(),
        ),
      )
      ..registerLazySingleton(
        () => LoginUseCase(
          getIt(),
        ),
      )
      ..registerLazySingleton(
        () => GetContriesUseCase(
          categoriesRepo: getIt(),
        ),
      )
      ..registerLazySingleton(
        () => GetGovernoratesUseCase(
          governoratesRepo: getIt(),
        ),
      )
      ..registerLazySingleton(
        () => GetOffersUseCase(
          offersRepo: getIt(),
        ),
      )
      ..registerLazySingleton(
        () => GetStoresUseCase(
          offersRepo: getIt(),
        ),
      )
      ..registerLazySingleton(
        () => GetCategoriesUseCase(
          categoriesRepo: getIt(),
        ),
      )
      ..registerLazySingleton(
        () => GetSubCategoriesUseCase(
          subcategoriesRepo: getIt(),
        ),
      )
      ..registerLazySingleton(
        () => GetMarkasUseCase(
          markasRepo: getIt(),
        ),
      )
      ..registerLazySingleton(
        () => GetProductsUseCase(
          productsRepo: getIt(),
        ),
      )
      ..registerLazySingleton(
        () => GetCouponsUseCase(
          couponsRepo: getIt(),
        ),
      )
      ..registerLazySingleton(
        () => GetNotificationsUseCase(
          notificationsRepoImp: getIt(),
        ),
      )
      ..registerLazySingleton(
        () => SaveExternalNotificationsDataUseCase(
          externalNotificationsRepo: getIt(),
        ),
      );
  }
}

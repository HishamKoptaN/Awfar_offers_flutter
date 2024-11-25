import '../../../features/categories/data/data_sources/categories_api.dart';
import '../../../features/countries/data/data_sources/countries_api.dart';
import '../../../features/coupons/data/data_sources/coupons_api.dart';
import '../../../features/governorates/data/data_sources/governorates_api.dart';
import '../../../features/notifications/data/datasources/notifications_api.dart';
import '../../../features/offers/data/data_sources/offers_api.dart';
import '../../networking/dio_factory.dart';
import '../dependency_injection.dart';

class ApiModule extends DIModule {
  @override
  Future<void> provides() async {
    final dio = await DioFactory.setupDio();
    getIt
      ..registerSingleton(dio)
      ..registerLazySingleton<CountriesApi>(
        () => CountriesApi(
          getIt(),
        ),
      )
      ..registerLazySingleton<GovernoratesApi>(
        () => GovernoratesApi(
          getIt(),
        ),
      )
      ..registerLazySingleton<OffersApi>(
        () => OffersApi(
          getIt(),
        ),
      )
      ..registerLazySingleton<CategoriesApi>(
        () => CategoriesApi(
          getIt(),
        ),
      )
      ..registerLazySingleton<CouponsApi>(
        () => CouponsApi(
          getIt(),
        ),
      )
      ..registerLazySingleton<NotificationsApi>(
        () => NotificationsApi(
          getIt(),
        ),
      );
  }
}

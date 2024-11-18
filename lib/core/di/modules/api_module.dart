import 'package:aroodi_app/core/networking/data_sources/get_city_api.dart';
import 'package:aroodi_app/core/networking/data_sources/get_countries_api.dart';
import 'package:aroodi_app/core/networking/data_sources/get_coupons_api.dart';
import '../../../features/categories/data/data_sources/categories_api.dart';
import '../../networking/data_sources/offers_api.dart';
import '../../networking/dio_factory.dart';
import '../dependency_injection.dart';

class ApiModule extends DIModule {
  @override
  Future<void> provides() async {
    final dio = await DioFactory.setupDio();
    getIt
      ..registerSingleton(dio)
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
      ..registerLazySingleton<GetCountriesApi>(
        () => GetCountriesApi(
          getIt(),
        ),
      )
      ..registerLazySingleton<GetCityApi>(
        () => GetCityApi(
          getIt(),
        ),
      )
      ..registerLazySingleton<GetCouponsApi>(
        () => GetCouponsApi(
          getIt(),
        ),
      );
  }
}

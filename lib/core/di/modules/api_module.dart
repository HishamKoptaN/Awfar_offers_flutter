import '../../../features/categories/data/data_sources/categories_api.dart';
import '../../../features/offers/data/data_sources/offers_api.dart';
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
      );
  }
}

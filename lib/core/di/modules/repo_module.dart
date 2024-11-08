import 'package:aroodi_app/features/get_countries_and_cities/data/repos/get_city_repo.dart';
import 'package:aroodi_app/features/get_countries_and_cities/data/repos/get_countries_repo.dart';

import '../../../features/categories/data/repo_impl/categories_repo_impl.dart';
import '../../../features/categories/domain/repo/categories_repo.dart';
import '../../../features/offers/data/repo_impl/offers_repo_impl.dart';
import '../../../features/offers/domain/repo/offers_repo.dart';
import '../dependency_injection.dart';

class RepositoryModule extends DIModule {
  @override
  Future<void> provides() async {
    getIt
      ..registerLazySingleton<OffersRepo>(
        () => OffersRepoImpl(
          getIt(),
        ),
      )
      ..registerLazySingleton<CategoriesRepo>(
        () => CategoriesRepoImpl(
          getIt(),
        ),
      )
      ..registerLazySingleton<GetCountriesRepo>(
        () => GetCountriesRepo(
          getIt(),
        ),
      )
      ..registerLazySingleton<GetCityRepo>(
        () => GetCityRepo(
          getIt(),
        ),
      );
  }
}

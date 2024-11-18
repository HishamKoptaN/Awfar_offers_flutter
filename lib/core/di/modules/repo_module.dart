import '../../../features/categories/data/repo_impl/categories_repo_impl.dart';
import '../../../features/categories/domain/repo/categories_repo.dart';
import '../../../features/countries/data/repo_impl/countries_repo_impl.dart';
import '../../../features/countries/domain/repo/countries_repo.dart';
import '../../../features/governorates/data/repo_impl/governorates_repo_impl.dart';
import '../../../features/governorates/domain/repo/governorates_repo.dart';
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
          getIt(),
        ),
      )
      ..registerLazySingleton<CategoriesRepo>(
        () => CategoriesRepoImpl(
          getIt(),
        ),
      );
  }
}

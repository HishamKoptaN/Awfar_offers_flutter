import '../../../features/categories/domain/use_cases/categories_use_case.dart';
import '../../../features/countries/domain/use_cases/get_countries_use_case.dart';
import '../../../features/governorates/domain/use_cases/get_governorates_use_case.dart';
import '../../../features/offers/domain/use_cases/get_offers_use_case.dart';
import '../dependency_injection.dart';

class UseCaseModule extends DIModule {
  @override
  Future<void> provides() async {
    getIt
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
          getIt(),
        ),
      )
      ..registerLazySingleton(
        () => GetCategoriesUseCase(
          getIt(),
        ),
      );
  }
}

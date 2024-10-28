import '../../../features/categories/domain/use_cases/categories_use_case.dart';
import '../../../features/offers/domain/use_cases/get_offers_use_case.dart';
import '../dependency_injection.dart';

class UseCaseModule extends DIModule {
  @override
  Future<void> provides() async {
    getIt
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

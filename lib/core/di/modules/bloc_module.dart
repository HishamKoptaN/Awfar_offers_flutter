import '../../../features/categories/presentation/bloc/categories_bloc.dart';
import '../../../features/countries/presentation/bloc/countries_bloc.dart';
import '../../../features/coupons/logic/coupons_cubit.dart';
import '../../../features/governorates/present/bloc/governorates_bloc.dart';
import '../../../features/offers/presentation/bloc/offers_bloc.dart';
import '../dependency_injection.dart';

class BlocModule extends DIModule {
  @override
  Future<void> provides() async {
    getIt
      ..registerLazySingleton<CountriesBloc>(
        () => CountriesBloc(
          getCountriesUseCase: getIt(),
        ),
      )
      ..registerLazySingleton<GovernoratesBloc>(
        () => GovernoratesBloc(
          getGovernoratesUseCase: getIt(),
        ),
      )
      ..registerLazySingleton<OffersBloc>(
        () => OffersBloc(
          getOffersUseCase: getIt(),
        ),
      )
      ..registerLazySingleton<CategoriesBloc>(
        () => CategoriesBloc(
          getCategoriesUseCase: getIt(),
        ),
      )
      ..registerLazySingleton<CouponsCubit>(
        () => CouponsCubit(
          getIt(),
        ),
      );
  }
}

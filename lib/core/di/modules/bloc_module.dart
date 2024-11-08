import 'package:aroodi_app/features/get_countries_and_cities/logic/get_cit_cubit.dart';
import 'package:aroodi_app/features/get_countries_and_cities/logic/get_countries_cubit.dart';

import '../../../features/categories/presentation/bloc/categories_bloc.dart';
import '../../../features/offers/presentation/bloc/offers_bloc.dart';
import '../dependency_injection.dart';

class BlocModule extends DIModule {
  @override
  Future<void> provides() async {
    getIt
      ..registerLazySingleton<OffersBloc>(
        () => OffersBloc(
          getIt(),
        ),
      )
      ..registerLazySingleton<CategoriesBloc>(
        () => CategoriesBloc(
          getIt(),
        ),
      )
      ..registerLazySingleton<GetCountriesCubit>(
        () => GetCountriesCubit(
          getIt(),
        ),
      )
      ..registerLazySingleton<GetCityCubit>(
        () => GetCityCubit(
          getIt(),
        ),
      );
  }
}

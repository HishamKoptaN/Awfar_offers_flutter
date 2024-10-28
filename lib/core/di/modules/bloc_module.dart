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
      );

    // ..registerLazySingleton<LoginBloc>(
    //   () => LoginBloc(
    //     getIt(),
    //   ),
    // )
    // ..registerLazySingleton<SignUpBloc>(
    //   () => SignUpBloc(
    //     getIt(),
    //   ),
    // )
    // ..registerLazySingleton<PriceQuoteBloc>(
    //   () => PriceQuoteBloc(
    //     getIt(),
    //   ),
    // );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'app.dart';
import 'core/app_observer.dart';
import 'core/database/cache/shared_pref_helper.dart';
import 'core/di/dependency_injection.dart';
import 'features/categories/presentation/bloc/categories_bloc.dart';
import 'features/countries/presentation/bloc/countries_bloc.dart';
import 'features/coupons/present/bloc/coupons_bloc.dart';
import 'features/governorates/present/bloc/governorates_bloc.dart';
import 'features/notifications/present/bloc/notifications_bloc.dart';
import 'features/offers/presentation/bloc/offers_bloc.dart';
import 'features/stores/presentation/bloc/stores_bloc.dart';
import 'features/sub_categories/presentation/bloc/sub_categories_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  await Injection.inject();
  SharedPrefHelper;
  Bloc.observer = AppBlocObserver();
  // await SharedPrefHelper.clearAllData();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CountriesBloc(
            getCountriesUseCase: getIt(),
          ),
        ),
        BlocProvider(
          create: (context) => GovernoratesBloc(
            getGovernoratesUseCase: getIt(),
          ),
        ),
        BlocProvider(
          create: (context) => OffersBloc(
            getOffersUseCase: getIt(),
          ),
        ),
        BlocProvider(
          create: (context) => StoresBloc(
            getStoresUseCase: getIt(),
          ),
        ),
        BlocProvider(
          create: (context) => CategoriesBloc(
            getCategoriesUseCase: getIt(),
          ),
        ),
        BlocProvider(
          create: (context) => SubCategoriesBloc(
            getSubCategoriesUseCase: getIt(),
          ),
        ),
        BlocProvider(
          create: (context) => CouponsBloc(
            getCouponsUseCase: getIt(),
          ),
        ),
        BlocProvider(
          create: (context) => NotificationsBloc(
            getNotificationsUseCase: getIt(),
          ),
        ),
      ],
      child: const AroodiApp(),
    ),
  );
}

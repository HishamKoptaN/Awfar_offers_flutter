import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'app.dart';
import 'core/app_observer.dart';
import 'core/database/cache/shared_pref_helper.dart';
import 'core/database/cache/shared_pref_keys.dart';
import 'core/di/dependency_injection.dart';
import 'features/categories/presentation/bloc/categories_bloc.dart';
import 'features/countries/presentation/bloc/countries_bloc.dart';
import 'features/coupons/present/bloc/coupons_bloc.dart';
import 'features/governorates/present/bloc/governorates_bloc.dart';
import 'features/notifications/present/bloc/notifications_bloc.dart';
import 'features/offers/presentation/bloc/offers_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  await Injection.inject();
  SharedPrefHelper;
  Bloc.observer = AppBlocObserver();
  await SharedPrefHelper.setData(
    key: SharedPrefKeys.countryId,
    value: 1,
  );
  await SharedPrefHelper.setData(
    key: SharedPrefKeys.governorateId,
    value: 1,
  );
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
          create: (context) => CategoriesBloc(
            getCategoriesUseCase: getIt(),
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

Future<bool> hasInternetConnection() async {
  var connectivityResult = (Connectivity().checkConnectivity(),);
  // ignore: unrelated_type_equality_checks
  return connectivityResult != ConnectivityResult.none;
}

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'core/app_observer.dart';
import 'core/database/cache/shared_pref_helper.dart';
import 'core/database/cache/shared_pref_keys.dart';
import 'core/di/dependency_injection.dart';
import 'core/global_methods.dart';
import 'core/helper_functions/on_generate_routes.dart';
import 'core/utils/app_colors.dart';
import 'features/categories/presentation/bloc/categories_bloc.dart';
import 'features/categories/presentation/bloc/categories_event.dart';
import 'features/countries/presentation/bloc/countries_bloc.dart';
import 'features/countries/presentation/bloc/countries_event.dart';
import 'features/governorates/present/bloc/governorates_bloc.dart';
import 'features/governorates/present/bloc/governorates_event.dart';
import 'features/offers/presentation/bloc/offers_bloc.dart';
import 'features/offers/presentation/bloc/offers_event.dart';
import 'generated/l10n.dart';
import 'home_view.dart';

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

class AroodiApp extends StatefulWidget {
  const AroodiApp({super.key});

  @override
  State<AroodiApp> createState() => _AroodiAppState();
}

class _AroodiAppState extends State<AroodiApp> {
  Future<Null> injectEvent() async {
    await Future.microtask(
      () {
        context.read<CountriesBloc>().add(
              const CountriesEvent.getCountries(),
            );
        context.read<GovernoratesBloc>().add(
              const GovernoratesEvent.getGvernorates(),
            );
        getGovernorate().then(
          (governorateId) {
            context.read<OffersBloc>().add(
                  OffersEvent.getOffers(
                    governorateId: governorateId,
                  ),
                );
          },
        );
        context.read<CategoriesBloc>().add(
              const CategoriesEvent.getCategoriesEvent(),
            );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    injectEvent();
  }

  @override
  Widget build(context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      designSize: Size(
        width,
        height,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.darkPrimaryColor,
        ),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: const Locale('ar'),
        supportedLocales: S.delegate.supportedLocales,
        onGenerateRoute: onGenerateRoute,
        initialRoute: HomeView.routeName,
      ),
    );
  }
}

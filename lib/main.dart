import 'package:aroodi_app/features/categories/presentation/bloc/categories_bloc.dart';
import 'package:aroodi_app/features/get_countries_and_cities/logic/get_cit_cubit.dart';
import 'package:aroodi_app/features/get_countries_and_cities/logic/get_countries_cubit.dart';
import 'package:aroodi_app/features/offers/presentation/bloc/offers_bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:aroodi_app/core/helper_functions/on_generate_routes.dart';
import 'package:aroodi_app/core/utils/app_colors.dart';
import 'package:aroodi_app/generated/l10n.dart';
import 'package:aroodi_app/home_view.dart';
import 'core/app_observer.dart';
import 'core/di/dependency_injection.dart';
import 'core/global.dart';
import 'features/categories/presentation/bloc/categories_event.dart';
import 'features/offers/presentation/bloc/offers_event.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  await Injection.inject();
  Bloc.observer = AppBlocObserver();
  runApp(
    MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => getIt<GetCountriesCubit>()..getCountries(),
      ),
      BlocProvider(
        create: (context) => getIt<GetCityCubit>()..getCity(),
      ),
      BlocProvider(create: (context) => getIt<OffersBloc>()),
      BlocProvider(
        create: (context) => getIt<OffersBloc>(),
      ),
      BlocProvider(
        create: (context) => getIt<CategoriesBloc>(),
      ),
    ], child: const AroodiApp()),
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
        getGovernorate().then((governorateId) {
          context.read<OffersBloc>().add(
                OffersEvent.getOffers(
                  governorateId: governorateId,
                ),
              );
        });
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

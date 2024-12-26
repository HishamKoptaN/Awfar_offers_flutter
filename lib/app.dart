import 'package:awfar_offer_app/features/admobe/app_open_ad_manager.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/di/dependency_injection.dart';
import 'core/helper_functions/on_generate_routes.dart';
import 'core/utils/app_colors.dart';
import 'features/countries/present/bloc/countries_bloc.dart';
import 'features/countries/present/bloc/countries_event.dart';
import 'features/cities/present/bloc/cities_bloc.dart';
import 'features/cities/present/bloc/cities_event.dart';
import 'features/main/present/bloc/main_bloc.dart';
import 'features/main/present/bloc/main_event.dart';
import 'features/main/present/bloc/main_state.dart';
import 'generated/l10n.dart';
import 'home_view.dart';

class AroodiApp extends StatefulWidget {
  const AroodiApp({super.key});

  @override
  State<AroodiApp> createState() => _AroodiAppState();
}

class _AroodiAppState extends State<AroodiApp> {
  getToken() async {
    String? myToken = await FirebaseMessaging.instance.getToken();
    print("My token  ==================$myToken");
  }

  //! allow notifactions permissions for ios and web
  requestPermissions() async {
    FirebaseMessaging? firebaseMessaging = FirebaseMessaging.instance;
    NotificationSettings settings = await firebaseMessaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      provisional: true,
      sound: true,
    );
  }

  Future<void> injectEvent() async {
    await Future.microtask(
      () async {
        context.read<CountriesBloc>().add(
              const CountriesEvent.getCountries(),
            );
        context.read<CitiesBloc>().add(
              const CitiesEvent.getCities(),
            );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        injectEvent();
      },
    );
  }

  @override
  Widget build(context) {
    return ScreenUtilInit(
      designSize: Size(
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      child: BlocProvider(
        create: (context) => MainBloc(
          checkUseCase: getIt(),
        )..add(
            const MainEvent.check(),
          ),
        child: BlocBuilder<MainBloc, MainState>(
          builder: (context, state) {
            return MaterialApp(
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
              onGenerateRoute: (settings) => onGenerateRoute(settings),
              initialRoute: HomeView.routeName,
            );
          },
        ),
      ),
    );
  }
}

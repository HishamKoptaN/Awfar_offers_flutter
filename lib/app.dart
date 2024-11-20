import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

import 'all_imports.dart';
import 'core/app_layout.dart';
import 'core/di/dependency_injection.dart';
import 'core/helper_functions/on_generate_routes.dart';
import 'core/utils/app_colors.dart';
import 'features/auth/login/present/view/login_view.dart';
import 'features/main/present/bloc/main_bloc.dart';
import 'features/main/present/bloc/main_event.dart';
import 'features/main/present/bloc/main_state.dart';
import 'home_view.dart';

class AroodiApp extends StatelessWidget {
  AroodiApp({
    required this.locale,
    super.key,
  });
  final String locale;
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
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
          auth: getIt(),
        )..add(
            const MainEvent.check(),
          ),
        child: MaterialApp(
          navigatorKey: navigatorKey,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.darkPrimaryColor,
          ),
          debugShowCheckedModeBanner: false,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: Locale(
            locale,
          ),
          onGenerateRoute: (settings) => onGenerateRoute(
            settings,
          ),
          home: AppLayout(
            route: "",
            showAppBar: false,
            body: BlocConsumer<MainBloc, MainState>(
              listener: (context, state) async {
                state.whenOrNull(
                  logedIn: () async {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeView(),
                      ),
                      (route) => false,
                    );
                  },
                  logedOut: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => LoginView(),
                      ),
                      (route) => false,
                    );
                  },
                );
              },
              builder: (context, state) {
                return Image.asset(
                  "assets/icon/aquan-logo-gif.gif",
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:aroodi_app/core/helper_functions/on_generate_routes.dart';
import 'package:aroodi_app/core/utils/app_colors.dart';
import 'package:aroodi_app/features/aroodi/presentation/views/home_view.dart';
import 'package:aroodi_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const AroodiApp());
}

class AroodiApp extends StatelessWidget {
  const AroodiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor:
            AppColors.darkPrimaryColor, // Background color for all screens
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
    );
  }
}

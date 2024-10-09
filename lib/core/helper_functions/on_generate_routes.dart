import 'package:aroodi_app/features/aroodi/presentation/views/aroodi_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AroodiView.routeName:
      return MaterialPageRoute(builder: (context) => const AroodiView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}

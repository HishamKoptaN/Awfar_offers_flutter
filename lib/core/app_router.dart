import 'package:flutter/material.dart';
import '../features/stores/present/views/stores_view.dart';

class AppRouter {
  Route? generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const StoresView(),
        );
      case 'settings':
      // return MaterialPageRoute(builder: (context) => AppLayout());
    }
    return null;
  }
}

import 'package:flutter/material.dart';

import '../features/offers/presentation/views/offer_view.dart';

class AppRouter {
  Route? generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const OfferView(),
        );
      case 'settings':
      // return MaterialPageRoute(builder: (context) => AppLayout());
    }
    return null;
  }
}

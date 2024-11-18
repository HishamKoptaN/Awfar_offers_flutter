import 'package:flutter/material.dart';

import '../../features/categories/presentation/views/categories_view.dart';
import '../../features/offer_details/presentation/views/offer_deatails_view.dart';
import '../../features/offer_details/presentation/views/widgets/full_screen_of_offer_image.dart';
import '../../features/offers/data/models/offers_response_model.dart';
import '../../features/offers/presentation/views/offer_view.dart';
import '../../features/profile/presentation/views/profile_view.dart';
import '../../features/search/presentation/views/search_view.dart';
import '../../features/settings/presentation/views/settings_view.dart';
import '../../home_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());
    case OfferView.routeName:
      return MaterialPageRoute(builder: (context) => const OfferView());
    case CategoriesView.routeName:
      final brandName = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => CategoriesView(
          brandName: brandName,
        ),
      );

    case FullScreenOfOfferImage.routeName:
      final args = settings.arguments as Map<String, dynamic>;
      final storeElement = args['store'] as StoreElement;
      final initialIndex = args['initialIndex'] as int;

      return MaterialPageRoute(
        builder: (context) => FullScreenOfOfferImage(
          storeElement: storeElement,
          initialIndex: initialIndex,
        ),
      );

    case SearchView.routeName:
      final args = settings.arguments as Map<String, dynamic>;
      final isBack = args['isBack'] as bool;
      final searchLabel = args['searchLabel'] as String;

      return MaterialPageRoute(
        builder: (context) => SearchView(
          isBack: isBack,
          searchLabel: searchLabel,
        ),
      );

    case SettingsView.routeName:
      return MaterialPageRoute(
        builder: (context) => SettingsView(
          isBack: settings.arguments as bool,
        ),
      );

    case ProfileView.routeName:
      return MaterialPageRoute(builder: (context) => const ProfileView());
    case OfferDeatailsView.routeName:
      final storeElement = settings.arguments as StoreElement;
      return MaterialPageRoute(
        builder: (context) => OfferDeatailsView(
          storeElement: storeElement,
        ),
      );
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}

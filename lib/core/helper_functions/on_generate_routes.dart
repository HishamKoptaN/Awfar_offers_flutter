import 'package:aroodi_app/features/offers/data/models/offers_response_model.dart';
import 'package:aroodi_app/features/offers/presentation/views/offer_view.dart';
import 'package:aroodi_app/features/categories/presentation/views/categories_view.dart';
import 'package:aroodi_app/features/offer_details/presentation/views/offer_deatails_view.dart';
import 'package:aroodi_app/features/offer_details/presentation/views/widgets/full_screen_of_offer_image.dart';
import 'package:aroodi_app/home_view.dart';
import 'package:aroodi_app/features/profile/presentation/views/profile_view.dart';
import 'package:aroodi_app/features/search/presentation/views/search_view.dart';
import 'package:aroodi_app/features/settings/presentation/views/settings_view.dart';
import 'package:flutter/material.dart';

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
      final imageUrls = args['imageUrls'] as List<String>;
      final initialIndex = args['initialIndex'] as int;

      return MaterialPageRoute(
        builder: (context) => FullScreenOfOfferImage(
          imageUrls: imageUrls,
          initialIndex: initialIndex,
        ),
      );

    case SearchView.routeName:
      return MaterialPageRoute(builder: (context) => const SearchView());

    case SettingsView.routeName:
      return MaterialPageRoute(builder: (context) => const SettingsView());

    case ProfileView.routeName:
      return MaterialPageRoute(builder: (context) => const ProfileView());
    case OfferDeatailsView.routeName:
      final offers = settings.arguments as List<Offer>;
      return MaterialPageRoute(
        builder: (context) => OfferDeatailsView(
          offers: offers,
        ),
      );
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}

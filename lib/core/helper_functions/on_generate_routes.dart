import 'package:awfar_offer_app/features/notifications/present/view/notifications_settings_view.dart';
import 'package:awfar_offer_app/features/privacy_policy_and_terms_and_conditions/presentation/views/privacy_policy_view.dart';
import 'package:awfar_offer_app/features/privacy_policy_and_terms_and_conditions/presentation/views/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/Auth/login/present/view/login_view.dart';
import '../../features/categories/present/views/categories_view.dart';
import '../../features/categories/present/views/sub_categories_items_view.dart';
import '../../features/coupons/present/bloc/coupons_bloc.dart';
import '../../features/coupons/present/view/coupons_view.dart';
import '../../features/notifications/present/view/notifications_view.dart';
import '../../features/offer_details/presentation/views/store_details_view.dart';
import '../../features/offer_details/presentation/views/widgets/full_screen_of_offer_image.dart';
import '../../features/profile/presentation/views/profile_view.dart';
import '../../features/search/presentation/views/search_view.dart';
import '../../features/settings/presentation/views/settings_view.dart';
import '../../features/stores/present/views/stores_view.dart';
import '../../home_view.dart';
import '../di/dependency_injection.dart';
import '../models/store.dart';
import '../models/sub_category.dart';

Route<dynamic> onGenerateRoute(
  RouteSettings settings,
) {
  switch (settings.name) {
    case LoginView.routeName:
      return MaterialPageRoute(
        builder: (context) => LoginView(
          showAppBar: true,
        ),
      );
    case HomeView.routeName:
      return MaterialPageRoute(
        builder: (context) => const HomeView(),
      );
    case StoresView.routeName:
      return MaterialPageRoute(
        builder: (context) => const StoresView(),
      );
    case CategoriesView.routeName:
      final brandName = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => CategoriesView(
          brandName: brandName,
        ),
      );

    case MarkasView.routeName:
      final data = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => MarkasView(
          subCategory: data['subCategory'],
          crossAxisCount: data['crossAxisCount'],
        ),
      );

    case NotificationsSettingsView.routeName:
      return MaterialPageRoute(
        builder: (context) => const NotificationsSettingsView(),
      );
    case PrivacyPolicyView.routeName:
      return MaterialPageRoute(
        builder: (context) => const PrivacyPolicyView(),
      );
    case TermsAndConditions.routeName:
      return MaterialPageRoute(
        builder: (context) => const TermsAndConditions(),
      );
    case CouponsView.routeName:
      return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => CouponsBloc(
            getCouponsUseCase: getIt(),
          ),
          child: const CouponsView(),
        ),
      );
    case FullScreenOfOfferImage.routeName:
      final args = settings.arguments as Map<String, dynamic>;
      final storeElement = args['store'] as Store;
      final initialIndex = args['initialIndex'] as int;

      return MaterialPageRoute(
        builder: (context) => FullScreenOfOfferImage(
          store: storeElement,
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
    case NotificationsView.routeName:
      return MaterialPageRoute(
        builder: (context) => const NotificationsView(),
      );

    case ProfileView.routeName:
      return MaterialPageRoute(
        builder: (context) => const ProfileView(),
      );
    case StoreDetailsView.routeName:
      final data = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => StoreDetailsView(
          store: data['storeElement'],
          crossAxisCount: data['crossAxisCount'],
        ),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(),
      );
  }
}

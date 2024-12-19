import 'package:awfar_offer_app/features/notifications/present/view/notifications_settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/Auth/login/presentation/view/login_view.dart';
import '../../features/categories/presentation/views/categories_view.dart';
import '../../features/categories/presentation/views/sub_categories_items_view.dart';
import '../../features/coupons/present/bloc/coupons_bloc.dart';
import '../../features/coupons/present/view/coupons_view.dart';
import '../../features/notifications/present/view/notifications_view.dart';
import '../../features/offer_details/presentation/views/store_deatails_view.dart';
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

    case SubCategoriesItemsView.routeName:
      return MaterialPageRoute(
        builder: (context) => SubCategoriesItemsView(
          subCategory: settings.arguments as SubCategory,
        ),
      );

    case NotificationsSettingsView.routeName:
      return MaterialPageRoute(
        builder: (context) => const NotificationsSettingsView(),
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
    case StoreDeatailsView.routeName:
      final storeElement = settings.arguments as Store;
      return MaterialPageRoute(
        builder: (context) => StoreDeatailsView(
          store: storeElement,
        ),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(),
      );
  }
}

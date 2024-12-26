import 'package:awfar_offer_app/core/services/local_notifications_services.dart';
import 'package:awfar_offer_app/core/services/push_notifications_services.dart';
import 'package:awfar_offer_app/features/admobe/app_open_ad_manager.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'app.dart';
import 'core/app_observer.dart';
import 'core/database/cache/shared_pref_helper.dart';
import 'core/di/dependency_injection.dart';
import 'core/notification_helper.dart';
import 'features/categories/presentation/bloc/categories_bloc.dart';
import 'features/countries/presentation/bloc/countries_bloc.dart';
import 'features/coupons/present/bloc/coupons_bloc.dart';
import 'features/governorates/present/bloc/governorates_bloc.dart';
import 'features/notifications/present/bloc/notifications_bloc.dart';
import 'features/offers/presentation/bloc/offers_bloc.dart';
import 'features/stores/present/bloc/stores_bloc.dart';
import 'features/sub_categories/presentation/bloc/sub_categories_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  MobileAds.instance.initialize();
  await Injection.inject();
  SharedPrefHelper;
  Bloc.observer = AppBlocObserver();
  // await SharedPrefHelper.clearAllData();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await NotificationsHelper().getAccessToken();
  Future.wait(
    [
      PushNotificationsServices.init(),
      LocalNotificationsServices.init(),
    ],
  );
  final AppOpenAdManager appOpenAdManager = AppOpenAdManager();
  appOpenAdManager.loadAd();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CountriesBloc(
            getCountriesUseCase: getIt(),
          ),
        ),
        BlocProvider(
          create: (context) => GovernoratesBloc(
            getGovernoratesUseCase: getIt(),
          ),
        ),
        BlocProvider(
          create: (context) => OffersBloc(
            getOffersUseCase: getIt(),
          ),
        ),
        BlocProvider(
          create: (context) => StoresBloc(
            getStoresUseCase: getIt(),
          ),
        ),
        BlocProvider(
          create: (context) => CategoriesBloc(
            getCategoriesUseCase: getIt(),
          ),
        ),
        BlocProvider(
          create: (context) => SubCategoriesBloc(
            getSubCategoriesUseCase: getIt(),
          ),
        ),
        BlocProvider(
          create: (context) => CouponsBloc(
            getCouponsUseCase: getIt(),
          ),
        ),
        BlocProvider(
          create: (context) => NotificationsBloc(
            getNotificationsUseCase: getIt(),
          ),
        ),
      ],
      child: AroodiApp(
        appOpenAdManager: appOpenAdManager,
      ),
    ),
  );
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print("Handling a background message: ${message.messageId}");
}

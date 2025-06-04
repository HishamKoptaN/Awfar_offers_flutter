import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:awfar_offer_app/all_imports.dart';
import 'package:awfar_offer_app/core/services/local_notifications_services.dart';
import 'package:awfar_offer_app/core/services/push_notifications_services.dart';
import 'package:awfar_offer_app/features/admobe/app_open_ad_manager.dart';
import 'app.dart';
import 'core/app_observer.dart';
import 'core/database/cache/shared_pref_helper.dart';
import 'core/di/dependency_injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  MobileAds.instance.initialize();
  await Injection.inject();
  SharedPrefHelper;
  Bloc.observer = AppBlocObserver();
  // await SharedPrefHelper.clearAllData();
  Future.wait(
    [
      PushNotificationsServices.init(),
      LocalNotificationsServices.init(),
    ],
  );
  final AppOpenAdManager appOpenAdManager = AppOpenAdManager();
  appOpenAdManager.loadAd();
  runApp(
    AroodiApp(
      locale: 'ar',
    ),
  );
}

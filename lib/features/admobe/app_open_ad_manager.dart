import 'package:awfar_offer_app/features/admobe/ad_manager.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AppOpenAdManager {
  AppOpenAd? _appOpenAd;
  bool _isAdLoaded = false;

  void loadAd() {
    AppOpenAd.load(
      adUnitId: AdManager.appOpenAd,
      request: const AdRequest(),
      adLoadCallback: AppOpenAdLoadCallback(
        onAdLoaded: (ad) {
          _appOpenAd = ad;
          _isAdLoaded = true;
        },
        onAdFailedToLoad: (error) {
          print('فشل في تحميل إعلان الفتح: ${error.message}');
        },
      ),
    );
  }

  void showAdIfAvailable() {
    if (_isAdLoaded && _appOpenAd != null) {
      _appOpenAd!.show();
      _appOpenAd = null; // إعادة التهيئة لإعلان جديد
      _isAdLoaded = false;
      loadAd(); // تحميل إعلان جديد
    } else {
      print('إعلان الفتح غير جاهز للعرض.');
    }
  }
}

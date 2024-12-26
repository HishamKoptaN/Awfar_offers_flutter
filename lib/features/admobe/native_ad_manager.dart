import 'package:awfar_offer_app/core/utils/app_colors.dart';
import 'package:awfar_offer_app/core/utils/app_text_styles.dart';
import 'package:awfar_offer_app/features/admobe/ad_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class NativeAdManager extends StatefulWidget {
  const NativeAdManager({super.key});

  @override
  State<NativeAdManager> createState() => _NativeAdManagerState();
}

class _NativeAdManagerState extends State<NativeAdManager> {
  NativeAd? nativeAd;
  bool nativeAdIsLoaded = false;

  @override
  void initState() {
    super.initState();
    loadAd(); // تحميل الإعلان عند بدء الحالة
  }

  @override
  void dispose() {
    nativeAd?.dispose(); // التأكد من التخلص من الإعلان عند إغلاق الصفحة
    super.dispose();
  }

  void loadAd() {
    nativeAd = NativeAd(
      adUnitId: AdManager.nativeAd,
      listener: NativeAdListener(
        onAdLoaded: (ad) {
          debugPrint('$NativeAd loaded.');
          setState(() {
            nativeAdIsLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          // Dispose the ad here to free resources.
          debugPrint('$NativeAd failed to load: $error');
          ad.dispose();
        },
      ),
      request: const AdRequest(),
      // Styling
      nativeTemplateStyle: NativeTemplateStyle(
        // Required: Choose a template.
        templateType: TemplateType.medium,
        // Optional: Customize the ad's style.
        mainBackgroundColor: AppColors.primaryColor,
        // cornerRadius: 0,
        callToActionTextStyle: NativeTemplateTextStyle(
          textColor: Colors.white,
          backgroundColor: AppColors.darkPrimaryColor,
          style: NativeTemplateFontStyle.monospace,
          size: 12.0,
        ),

        primaryTextStyle: NativeTemplateTextStyle(
          textColor: Colors.white,
          style: NativeTemplateFontStyle.italic,
          size: 16.0,
        ),
        secondaryTextStyle: NativeTemplateTextStyle(
          textColor: Colors.green,
          backgroundColor: Colors.black,
          style: NativeTemplateFontStyle.bold,
          size: 16.0,
        ),
        tertiaryTextStyle: NativeTemplateTextStyle(
          textColor: Colors.white,
          style: NativeTemplateFontStyle.normal,
          size: 14.0,
        ),
      ),
    )..load();
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 320, // minimum recommended width
        minHeight: 320, // minimum recommended height
        maxWidth: 400,
        maxHeight: 400,
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        child: nativeAdIsLoaded
            ? AdWidget(ad: nativeAd!)
            : Card(
                color: AppColors.primaryColor,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(
                  child: Text(
                    "اعلان",
                    style: TextStyles.bold13,
                  ),
                ),
              ),
      ),
    );
  }
}

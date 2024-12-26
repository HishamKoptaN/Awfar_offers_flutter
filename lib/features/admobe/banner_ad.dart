import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'ad_manager.dart';

class BannerAds extends StatefulWidget {
  const BannerAds({super.key});
  @override
  State<BannerAds> createState() => _BannerAdsState();
}

class _BannerAdsState extends State<BannerAds> {
  BannerAd? bannerAd;
  bool isLoaded = false;

  void load() {
    bannerAd = createBannerAd();
    bannerAd!.load();
  }

  BannerAd createBannerAd() {
    return BannerAd(
      adUnitId: AdManager.bannerAd,
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          debugPrint('Banner Ad Loaded');
          setState(() {
            isLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
          setState(() {
            isLoaded = false;
          });
          debugPrint('Banner Ad Failed to Load: ${error.message}');
        },
      ),
    );
  }

  @override
  void initState() {
    load();
    super.initState();
  }

  @override
  void dispose() {
    bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: isLoaded
          ? Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                width: bannerAd!.size.width.toDouble(),
                height: bannerAd!.size.height.toDouble(),
                child: AdWidget(ad: bannerAd!),
              ),
            )
          : const SizedBox(),
    );
  }
}

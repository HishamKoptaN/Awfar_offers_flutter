import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:aroodi_app/features/admobe/ad_manager.dart';

class BannerAds extends StatefulWidget {
  const BannerAds({super.key});
  @override
  State<BannerAds> createState() => _BannerAdsState();
}

class _BannerAdsState extends State<BannerAds> {
  BannerAd? bannerAd;
  bool isLoaded = false;

  void load() {
    bannerAd = BannerAd(
      size: AdSize.banner,
      adUnitId: AdManager.bannerHome,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            isLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
        },
      ),
      request: const AdRequest(),
    )..load();
  }

  @override
  void initState() {
    load();
    super.initState();
  }

  @override
  void dispose() {
    if (isLoaded) {
      bannerAd!.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: isLoaded
          ? SizedBox(
              width: bannerAd!.size.width.toDouble(),
              height: bannerAd!.size.height.toDouble(),
              child: AdWidget(
                ad: bannerAd!,
              ),
            )
          : const SizedBox(),
    );
  }
}

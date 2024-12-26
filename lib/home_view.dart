import 'package:awfar_offer_app/features/admobe/app_bar_item.dart';
import 'package:awfar_offer_app/features/admobe/app_lifecycle_reactor.dart';
import 'package:awfar_offer_app/features/admobe/app_open_ad_manager.dart';
import 'package:awfar_offer_app/features/admobe/constant_manager.dart';
import 'package:awfar_offer_app/features/profile/presentation/views/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'core/global_methods.dart';
import 'core/utils/app_colors.dart';
import 'features/categories/present/views/categories_view.dart';
import 'features/coupons/present/view/coupons_view.dart';
import 'features/main/present/bloc/main_bloc.dart';
import 'features/main/present/bloc/main_state.dart';
import 'features/stores/present/views/stores_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });
  static const routeName = 'home_screen';
  @override
  State<HomeView> createState() => _HomeView();
}

class _HomeView extends State<HomeView> {
  int currentIndex = 0;

  final appOpenAdManager = AppOpenAdManager();
  var isMobileAdsInitializeCalled = false;
  var isPrivacyOptionsRequired = false;
  late AppLifecycleReactor appLifecycleReactor;

  final List<Widget> screens = [
    const StoresView(),
    const CategoriesView(
      brandName: '',
    ),
    // const SearchView(
    //   isBack: false,
    //   searchLabel: "بحث",
    // ),
    const CouponsView(),
    const ProfileView(),
  ];

  @override
  void initState() {
    super.initState();
    appLifecycleReactor =
        AppLifecycleReactor(appOpenAdManager: appOpenAdManager);
    appLifecycleReactor.listenToAppStateChanges();

    ConsentManager.instance.gatherConsent((consentGatheringError) {
      if (consentGatheringError != null) {
        // Consent not obtained in current session.
        debugPrint(
            "${consentGatheringError.errorCode}: ${consentGatheringError.message}");
      }

      // Check if a privacy options entry point is required.
      _getIsPrivacyOptionsRequired();

      // Attempt to initialize the Mobile Ads SDK.
      _initializeMobileAdsSDK();
    });

    // This sample attempts to load ads using consent obtained in the previous session.
    _initializeMobileAdsSDK();
  }

  @override
  Widget build(context) {
    void onTapped(
      int index,
    ) {
      setState(
        () {
          currentIndex = index;
        },
      );
    }

    return Scaffold(
      body: BlocConsumer<MainBloc, MainState>(
        listener: (context, state) async {
          state.whenOrNull(
            firstTime: () async {
              showCountrySelection(
                context: context,
              );
            },
            logedIn: () async {
              await loadAppData(
                context,
              );
            },
          );
        },
        builder: (context, state) {
          return IndexedStack(
            index: currentIndex,
            children: screens,
          );
        },
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          backgroundColor: AppColors.primaryColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: onTapped,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          selectedFontSize: 16,
          items: const [
            BottomNavigationBarItem(
              backgroundColor: AppColors.primaryColor,
              icon: Icon(
                Icons.local_offer_outlined,
              ),
              label: "عروض",
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColors.primaryColor,
              icon: Icon(Icons.category_outlined),
              label: "الفئات",
            ),
            // BottomNavigationBarItem(
            //   backgroundColor: AppColors.primaryColor,
            //   icon: Icon(Icons.search_outlined),
            //   label: 'بحث',
            // ),
            BottomNavigationBarItem(
              backgroundColor: AppColors.primaryColor,
              icon: Icon(Icons.card_giftcard_outlined),
              label: 'كوبون',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColors.primaryColor,
              icon: Icon(Icons.person_outlined),
              label: 'حساب',
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> appBarActions() {
    var array = [AppBarItem(AppBarItem.adInpsectorText, 0)];

    if (isPrivacyOptionsRequired) {
      array.add(AppBarItem(AppBarItem.privacySettingsText, 1));
    }

    return <Widget>[
      PopupMenuButton<AppBarItem>(
          itemBuilder: (context) => array
              .map((item) => PopupMenuItem<AppBarItem>(
                    value: item,
                    child: Text(
                      item.label,
                    ),
                  ))
              .toList(),
          onSelected: (item) {
            switch (item.value) {
              case 0:
                MobileAds.instance.openAdInspector((error) {
                  // Error will be non-null if ad inspector closed due to an error.
                });
              case 1:
                ConsentManager.instance.showPrivacyOptionsForm((formError) {
                  if (formError != null) {
                    debugPrint("${formError.errorCode}: ${formError.message}");
                  }
                });
            }
          })
    ];
  }

  /// Redraw the app bar actions if a privacy options entry point is required.
  void _getIsPrivacyOptionsRequired() async {
    if (await ConsentManager.instance.isPrivacyOptionsRequired()) {
      setState(() {
        isPrivacyOptionsRequired = true;
      });
    }
  }

  /// Initialize the Mobile Ads SDK if the SDK has gathered consent aligned with
  /// the app's configured messages.
  void _initializeMobileAdsSDK() async {
    if (isMobileAdsInitializeCalled) {
      return;
    }

    if (await ConsentManager.instance.canRequestAds()) {
      isMobileAdsInitializeCalled = true;

      // Initialize the Mobile Ads SDK.
      MobileAds.instance.initialize();

      // Load an ad.
      appOpenAdManager.loadAd();
    }
  }
}

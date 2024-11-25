import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/utils/app_colors.dart';
import 'features/categories/presentation/bloc/categories_bloc.dart';
import 'features/categories/presentation/views/categories_view.dart';
import 'features/countries/presentation/bloc/countries_bloc.dart';
import 'features/coupons/present/bloc/coupons_bloc.dart';
import 'features/coupons/present/coupons_view.dart';
import 'features/governorates/present/bloc/governorates_bloc.dart';
import 'features/notifications/present/bloc/notifications_bloc.dart';
import 'features/offers/presentation/bloc/offers_bloc.dart';
import 'features/offers/presentation/views/offers_view.dart';
import 'features/search/presentation/views/search_view.dart';
import 'features/settings/presentation/views/settings_view.dart';
import 'features/categories/presentation/bloc/categories_event.dart';
import 'features/countries/presentation/bloc/countries_event.dart';
import 'core/global_methods.dart';
import 'features/coupons/present/bloc/coupons_event.dart';
import 'features/governorates/present/bloc/governorates_event.dart';
import 'features/notifications/present/bloc/notifications_event.dart';
import 'features/offers/presentation/bloc/offers_event.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const routeName = 'home_screen';
  @override
  State<HomeView> createState() => _HomeView();
}

class _HomeView extends State<HomeView> {
  int currentIndex = 0;
  final List<Widget> screens = [
    const OfferView(),
    const CategoriesView(brandName: ''),
    const SearchView(
      isBack: false,
      searchLabel: "بحث",
    ),
    const CouponsView(),
    const SettingsView(
      isBack: false,
    ),
    // const ProfileView(),
  ];

  @override
  void initState() {
    super.initState();
    injectEvent();
  }

  Future<Null> injectEvent() async {
    await Future.microtask(
      () {
        // context.read<CountriesBloc>().add(
        //       const CountriesEvent.getCountries(),
        //     );
        // context.read<GovernoratesBloc>().add(
        //       const GovernoratesEvent.getGvernorates(),
        //     );
        // getGovernorate().then(
        //   (governorateId) {
        //     context.read<OffersBloc>().add(
        //           OffersEvent.getOffers(
        //             governorateId: governorateId,
        //           ),
        //         );
        //   },
        // );
        // context.read<CategoriesBloc>().add(
        //       const CategoriesEvent.getCategoriesEvent(),
        //     );
        // context.read<CouponsBloc>().add(
        //       const CouponsEvent.getCoupons(),
        //     );
        context.read<NotificationsBloc>().add(
              const NotificationsEvent.getNotifications(),
            );
      },
    );
  }

  @override
  Widget build(context) {
    void onTapped(int index) {
      setState(
        () {
          currentIndex = index;
        },
      );
    }

    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
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
              icon: Icon(Icons.local_offer_outlined),
              label: "عروض",
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColors.primaryColor,
              icon: Icon(Icons.category_outlined),
              label: "الفئات",
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColors.primaryColor,
              icon: Icon(Icons.search_outlined),
              label: 'بحث',
            ),
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
}

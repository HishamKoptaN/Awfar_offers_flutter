import 'package:awfar_offer_app/features/profile/presentation/views/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/global_methods.dart';
import 'core/utils/app_colors.dart';
import 'features/categories/present/views/categories_view.dart';
import 'features/coupons/present/view/coupons_view.dart';
import 'features/main/present/bloc/main_bloc.dart';
import 'features/main/present/bloc/main_state.dart';
import 'features/stores/present/views/stores_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const routeName = 'home_screen';
  @override
  State<HomeView> createState() => _HomeView();
}

class _HomeView extends State<HomeView> {
  int currentIndex = 0;
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
  }

  @override
  Widget build(
    context,
  ) {
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
}

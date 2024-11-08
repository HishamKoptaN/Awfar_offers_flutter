import 'package:aroodi_app/core/di/dependency_injection.dart';
import 'package:aroodi_app/core/widgets/custom_divider_widget.dart';
import 'package:aroodi_app/features/offers/presentation/bloc/offers_event.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aroodi_app/core/networking/shared_pref.dart';
import 'package:aroodi_app/core/utils/app_colors.dart';
import 'package:aroodi_app/core/utils/app_text_styles.dart';
import 'package:aroodi_app/features/offers/presentation/bloc/offers_bloc.dart';
import 'package:aroodi_app/features/offers/presentation/bloc/offers_state.dart';
import 'package:aroodi_app/features/get_countries_and_cities/data/models/get_city_model.dart';
import 'package:aroodi_app/features/get_countries_and_cities/data/models/get_countries_model.dart';
import 'package:aroodi_app/features/get_countries_and_cities/logic/get_cit_cubit.dart';
import 'package:aroodi_app/features/get_countries_and_cities/logic/get_city_state.dart';
import 'package:aroodi_app/features/get_countries_and_cities/logic/get_countries_cubit.dart';
import 'package:aroodi_app/features/get_countries_and_cities/logic/get_countries_state.dart';

class BuildAppBarWidget extends StatefulWidget {
  const BuildAppBarWidget({super.key});

  @override
  State<BuildAppBarWidget> createState() => _BuildAppBarWidgetState();
}

class _BuildAppBarWidgetState extends State<BuildAppBarWidget> {
  String selectedCountry = 'مصر';
  String selectedCity = Prefs.getString("cityName");
  String? selectedCountryCode = Prefs.getString("countryCode");
  int selectedCountryId = Prefs.getInt("countryId");

  @override
  Widget build(BuildContext context) {
    return BlocListener<OffersBloc, OffersState>(
      listener: (context, state) {
        // if (state is loading) {
        //   // Handle new data loaded if necessary, or just trigger a rebuild
        //   setState(() {});
        // }
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
        child: Row(
          children: [
            Text(
              "Awfar Offer",
              style: TextStyles.bold13.copyWith(
                color: AppColors.lightPrimaryColor,
              ),
            ),
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    _buildCountrySelector(),
                    const SizedBox(width: 8),
                    _buildCitySelector(),
                    const Icon(
                      Icons.arrow_drop_down_sharp,
                      color: AppColors.lightPrimaryColor,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCountrySelector() {
    return BlocConsumer<GetCountriesCubit, GetCountriesState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is GetCountriesLoading) {
          return const CircularProgressIndicator();
        } else if (state is GetCountriesSuccess) {
          return GestureDetector(
            onTap: () {
              _showCountrySelection(state.getCountriesModel);
            },
            child: selectedCountryCode != null
                ? CountryFlag.fromCountryCode(
                    selectedCountryCode!,
                    width: 30,
                    height: 20,
                    shape: const RoundedRectangle(6),
                  )
                : Text(
                    selectedCountry,
                    style: const TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
          );
        } else {
          return const Text(
            "unknown",
            style: TextStyle(color: Colors.white),
          );
        }
      },
    );
  }

  Widget _buildCitySelector() {
    return BlocConsumer<GetCityCubit, GetCityState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is GetCityLoading) {
          return const CircularProgressIndicator();
        } else if (state is GetCitySuccess) {
          return GestureDetector(
            onTap: () {
              _showCitySelection(state.getCityModel);
            },
            child: Text(
              selectedCity,
              style: const TextStyle(color: Colors.white),
            ),
          );
        } else {
          return const Text(
            "unknown",
            style: TextStyle(color: Colors.white),
          );
        }
      },
    );
  }

  void _showCountrySelection(List<GetCountriesModel> countries) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            color: AppColors.primaryColor,
          ),
          height: MediaQuery.of(context).size.height * 0.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 8),
              const Text('إختر البلد', style: TextStyles.bold18),
              const CustomDividerWidget(),
              Expanded(
                child: ListView.builder(
                  itemCount: countries.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCity = 'اختر المدينة';
                          selectedCountryCode = countries[index].code;
                          selectedCountryId = countries[index].id;
                          Prefs.setInt("countryId", selectedCountryId);
                          Prefs.setString("countryCode", selectedCountryCode!);
                        });
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 8),
                        child: Text(
                          countries[index].code,
                          style: TextStyles.bold14,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showCitySelection(List<GetCityModel> cities) {
    List<GetCityModel> filteredCities = cities
        .where((city) => city.countryId == Prefs.getInt("countryId"))
        .toList();

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            color: AppColors.primaryColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('إختر المنطقة', style: TextStyles.bold18),
              const CustomDividerWidget(),
              Expanded(
                child: ListView.builder(
                  itemCount: filteredCities.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () async {
                        setState(() {
                          selectedCity = filteredCities[index].name;
                          Prefs.setString("cityName", selectedCity);
                        });
                        Navigator.pop(context);
                        getIt<OffersBloc>().add(
                          OffersEvent.getOffersEvent(
                            governorateId: Prefs.getInt("countryId").toString(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 8),
                        child: Text(
                          filteredCities[index].name,
                          style: TextStyles.bold14,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
